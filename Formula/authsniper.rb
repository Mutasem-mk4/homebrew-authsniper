class Authsniper < Formula
  desc "The Ultimate AST-Driven API BOLA/IDOR Hunter"
  homepage "https://github.com/Mutasem-mk4/AuthSniper"
  version "1.0.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/Mutasem-mk4/AuthSniper/releases/download/v1.0.1/authsniper_Darwin_x86_64.tar.gz"
    elsif Hardware::CPU.arm?
      url "https://github.com/Mutasem-mk4/AuthSniper/releases/download/v1.0.1/authsniper_Darwin_arm64.tar.gz"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Mutasem-mk4/AuthSniper/releases/download/v1.0.1/authsniper_Linux_x86_64.tar.gz"
    elsif Hardware::CPU.arm?
      url "https://github.com/Mutasem-mk4/AuthSniper/releases/download/v1.0.1/authsniper_Linux_arm64.tar.gz"
    end
  end

  def install
    bin.install "authsniper"
  end

  test do
    system "#{bin}/authsniper", "-h"
  end
end
