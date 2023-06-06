# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseATbeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "1.67.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.67.0/supabase_darwin_amd64.tar.gz"
      sha256 "c4ac2c95a1facea4f76e51bb0e2c17523debde5b633e68dbc9fc301258413a2f"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.67.0/supabase_darwin_arm64.tar.gz"
      sha256 "6b2f3fa3ee98607f44a6db9221ef8105bd8c4d753cef78525fae1a57cd3c7c7e"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.67.0/supabase_linux_arm64.tar.gz"
      sha256 "c6d7e694ba708b8db7d3bee4c042faa6a3721c6f7b0c484e52e3a819ab447613"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.67.0/supabase_linux_amd64.tar.gz"
      sha256 "2c288543fb96ca4d25be1686134deaa07545c182fb5690613ea9daea3f44656f"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
