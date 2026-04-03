class Zit < Formula
  desc "A TUI-based Git dashboard for efficient repository management"
  homepage "https://github.com/JUSTMEETPATEL/zit"
  url "https://github.com/JUSTMEETPATEL/zit/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "6a47619f02a79cb9afd928a19f7e8c3cb5bda51bf506b000196449bb2b465b50"
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
