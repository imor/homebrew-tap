# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.96.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.96.4/supabase_darwin_arm64.tar.gz"
      sha256 "3cfac9de69e82ecf05cec1c71a8b59ff0f87d0e2d0fe5f6143100395c163938c"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.96.4/supabase_darwin_amd64.tar.gz"
      sha256 "22678d60e19c90e2d272fc9d0a07c930f547d49462f78d427786b10022b847cd"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.96.4/supabase_linux_amd64.tar.gz"
      sha256 "54b1b21cc14ba79bf9d92d17c1313d3f54a06741a0a1ca95ba672c2b6f55cbec"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.96.4/supabase_linux_arm64.tar.gz"
      sha256 "b67cad018799c5531f5b143c2c3a2d0c1b2e514dad3282b506641132120d3fe1"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
