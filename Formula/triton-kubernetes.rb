class TritonKubernetes < Formula
  desc "Multi-cloud Kubernetes"
  homepage "https://www.joyent.com/triton/kubernetes"
  url "https://github.com/joyent/triton-kubernetes/releases/download/v0.9.0-pre2/triton-kubernetes"
  version "v0.9.0-pre"
  sha256 "8c04e64e24dd24daff3a3dbdd257053b34991547e78d13459c6a326fb11a5280"

  def install
    bin.install Dir["*"]
  end

  def caveats; <<~EOS
    triton-kubernetes requires jq and terraform to be available on your system.
    EOS
end

  test do
    system "#{bin}/triton-kubernetes", "version"
  end
end
