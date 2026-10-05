class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.1.6/cull_macos_universal.tar.gz"
  sha256 "5eda5f28db2bc9a23b50498fef676c0cc60fd3e86a93ddee8fae7c1a13f2cb7d"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
