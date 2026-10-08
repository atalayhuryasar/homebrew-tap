class Envmove < Formula
  desc "Carry the project context git refuses to: .env, handover docs, AI agent state"
  homepage "https://github.com/atalayhuryasar/envmove"
  url "https://github.com/atalayhuryasar/envmove/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  license "MIT"
  head "https://github.com/atalayhuryasar/envmove.git", branch: "main"

  # The tag is written out rather than interpolated from `version`. Homebrew orders
  # url before version, so "#{version}" in the class body would expand to an empty
  # string and the download would 404 on "v.tar.gz". Both lines are literal and have to
  # be bumped together.
  #
  # Found by running brew install rather than brew style.

  # A plain Go binary, no cgo, nothing needed at runtime except git. That is what makes
  # building it from source acceptable here. Built from the tagged source so a given
  # formula version always produces the same commit.
  depends_on "go" => :build
  depends_on "git"

  def install
    ENV["CGO_ENABLED"] = "0"
    # The package has to be named explicitly. Without it go build targets the current
    # directory, which is the module root, and fails with "no Go files".
    # std_go_args takes no version keyword either, so the ldflag is spelled out here.
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/envmove"
    bin.install "envmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envmove version")

    # Setup must refuse politely outside a repository rather than write state somewhere
    # unexpected. The message has to name git, otherwise the failure is a mystery.
    output = shell_output("cd #{tmp} && #{bin}/envmove setup", 1)
    assert_match "git", output
  end
end
