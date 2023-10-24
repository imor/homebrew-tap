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
      sha256 ""

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-macos-amd64.tar.gz"
      sha256 ""

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-linux-arm64.tar.gz"
      sha256 ""

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.1/dbdev-v0.1.1-linux-amd64.tar.gz"
      sha256 ""

      def install
        bin.install "dbdev"
      end
    end
  end
end
