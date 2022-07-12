# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.29.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.29.3/supabase_0.29.3_darwin_arm64.tar.gz"
      sha256 "2457c23a56f9b13b23b69cb5ca3572d47dd49cf79e1c6791d71f59e8cb90709f"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.29.3/supabase_0.29.3_darwin_amd64.tar.gz"
      sha256 "1b2c2f01192d7561ff5f4d59f70715ea45b7042f177e2ea91ea7db1dc76bd152"

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
      url "https://github.com/supabase/cli/releases/download/v0.29.3/supabase_0.29.3_linux_amd64.tar.gz"
      sha256 "a7f424cfeabe533f436bff4da0a4b9b73c203d8add892a3c26332defac96abdf"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v0.29.3/supabase_0.29.3_linux_arm64.tar.gz"
      sha256 "051b2b8c1602d213153b7ac9dc0a01c4157e124d876b1a2dcf7d2a872e7e2377"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
