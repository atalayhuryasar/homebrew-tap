class Envmove < Formula
  desc "Carry the project context git refuses to: .env, handover docs, AI agent state"
  homepage "https://github.com/atalayhuryasar/envmove"
  url "https://github.com/atalayhuryasar/envmove/archive/refs/tags/v#{version}.tar.gz"
  version "0.2.0"
  license "MIT"
  head "https://github.com/atalayhuryasar/envmove.git", branch: "main"

  # envmove is a plain Go binary with no cgo and no runtime dependency beyond git, which
  # is what makes it installable from source this way at all. Built from the tagged
  # source so that a given formula always produces the same commit.
  depends_on "go" => :build
  depends_on "git"

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(version: version, ldflags: "-s -w")
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
