class Zit < Formula
  desc "A TUI-based Git dashboard for efficient repository management"
  homepage "https://github.com/JUSTMEETPATEL/zit"
  url "https://github.com/JUSTMEETPATEL/zit/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7f32268b092c3db221a6bfaa2ec828193fff97c5245511d5e7194fe598cf259b"
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
