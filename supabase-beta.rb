# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.99.0/supabase_darwin_arm64.tar.gz"
      sha256 "29655684530d6dc96a12ad232ee3f08337848db9a89cf2cb9c20f7cc76d47555"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.99.0/supabase_darwin_amd64.tar.gz"
      sha256 "a6f42a412647590cd61d1947587b502391793005342b7e824a8bb73c7a0561f7"

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
      url "https://github.com/supabase/cli/releases/download/v1.99.0/supabase_linux_amd64.tar.gz"
      sha256 "7cb98e871cc37eaa5a391683ddec0a15e4fb74aded5115d1b202986b2c0c5f39"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.99.0/supabase_linux_arm64.tar.gz"
      sha256 "500ccecae376c0016438befb08340b5d9887230825f94d45c7320ada17848713"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
