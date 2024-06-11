# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aiac < Formula
  desc "Artificial Intelligence Infrastructure-as-Code Generator"
  homepage "https://github.com/gofireflyio/aiac"
  version "4.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/gofireflyio/aiac/releases/download/v4.3.0/aiac_4.3.0_darwin-amd64.tar.gz"
      sha256 "3ca3bd6a687e929cf27dcea6884bd7bc85aae6435fcdd1e9930df10eb9f887bc"

      def install
        bin.install "aiac"
      end
    end
    on_arm do
      url "https://github.com/gofireflyio/aiac/releases/download/v4.3.0/aiac_4.3.0_darwin-arm64.tar.gz"
      sha256 "12b335107370e2f7ad56a65b1aa64cbf02392e80ca6436d693878e02627a13b3"

      def install
        bin.install "aiac"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gofireflyio/aiac/releases/download/v4.3.0/aiac_4.3.0_linux-amd64.tar.gz"
        sha256 "e7f41e9970f6c4a623083d707e5762c51df1ae02c91a05dee6ee22250d7c6cef"

        def install
          bin.install "aiac"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gofireflyio/aiac/releases/download/v4.3.0/aiac_4.3.0_linux-arm64.tar.gz"
        sha256 "b11965925cabb27a99f642c2d68fa94df6ca1898edd608949fb21dab706d3f14"

        def install
          bin.install "aiac"
        end
      end
    end
  end

  test do
    system "#{bin}/aiac", "--help"
  end
end