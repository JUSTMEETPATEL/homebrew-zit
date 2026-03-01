class Zit < Formula
  desc "A TUI-based Git dashboard for efficient repository management"
  homepage "https://github.com/JUSTMEETPATEL/zit"
  url "https://github.com/JUSTMEETPATEL/zit/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "b6ce685e42683da5747481c47ae7caed12f1215e3c35ce88b0c97bf0886040a5"
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
