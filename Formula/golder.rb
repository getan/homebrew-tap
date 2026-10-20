class Golder < Formula
  desc "Terminal AI coding agent in Go"
  homepage "https://github.com/getan/golder"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getan/golder/releases/download/v1.4.0/golder_1.4.0_Darwin_arm64.tar.gz"
      sha256 "963ed90a9a7b4e21f5382527b42f05ceca6950d7a3e7c627e3b2622f82097fe0"
    else
      url "https://github.com/getan/golder/releases/download/v1.4.0/golder_1.4.0_Darwin_x86_64.tar.gz"
      sha256 "918a8182aec6463f60fd9b2bfb837357a3e51f67f8fd6d2ae66feb6bc1e9caca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getan/golder/releases/download/v1.4.0/golder_1.4.0_Linux_arm64.tar.gz"
      sha256 "98ec2ca0b2ae2190c23db381e3cd3a82125816b15f6ecda53b11a722947b620c"
    else
      url "https://github.com/getan/golder/releases/download/v1.4.0/golder_1.4.0_Linux_x86_64.tar.gz"
      sha256 "9a378bcc26514b6a94c3bb5856a0adcd219fa2b01e191274df11d4a5e1564de3"
    end
  end

  def install
    bin.install "golder"
  end

  test do
    assert_match "golder", shell_output("#{bin}/golder --version 2>&1")
  end
end
