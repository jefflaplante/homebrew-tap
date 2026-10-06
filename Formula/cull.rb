class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.2.1/cull_macos_universal.tar.gz"
  sha256 "b6a590518fc6850b1112fbdf41e978d997530eb7d211eb35de8c1e5a99e4cc4c"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
