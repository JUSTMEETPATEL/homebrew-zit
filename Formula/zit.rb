class Zit < Formula
  desc "A TUI-based Git dashboard for efficient repository management"
  homepage "https://github.com/JUSTMEETPATEL/zit"
  url "https://github.com/JUSTMEETPATEL/zit/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "cac2be9b542004a9b865c99aba3d7cb939e3bfbfb29a15d48fc150e0b12ade26"
  license "MIT"
  head "https://github.com/JUSTMEETPATEL/zit.git", branch: "main"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/zit 2>&1", 1)
  end
end
