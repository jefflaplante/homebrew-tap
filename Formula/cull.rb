class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.2.2/cull_macos_universal.tar.gz"
  sha256 "f89a69f2dedfb84c6878e30e68d432e749c5f7975f09e894ea66e593cea7ffd2"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
