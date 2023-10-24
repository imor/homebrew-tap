# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-macos-amd64.tar.gz"
      sha256 "2c6013f406b18c9d6c7a88a60b7be5273610a17a90e96edc9fa0dc0785881510"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-macos-amd64.tar.gz"
      sha256 "2c6013f406b18c9d6c7a88a60b7be5273610a17a90e96edc9fa0dc0785881510"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-linux-arm64.tar.gz"
      sha256 "5452a1c724f5b77e182e180f51a258cc3c749ee14397421d87c29fe60268f67c"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-linux-amd64.tar.gz"
      sha256 "58d0a4726ddb0d0ed89970d5217ca9a084f39e5373c327e30e1a326bdba8ab20"

      def install
        bin.install "dbdev"
      end
    end
  end
end
