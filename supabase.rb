# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.24.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.24.5/supabase_0.24.5_darwin_amd64.tar.gz"
      sha256 "367e36599f1bbe4841f2fe178d5abd14042235d6783fb8f4eb962d9a30304dee"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.24.5/supabase_0.24.5_darwin_arm64.tar.gz"
      sha256 "4839e572cee530853e805cc8f0ad7bc36300dab82024808e47c30da7d5603b06"

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
      url "https://github.com/supabase/cli/releases/download/v0.24.5/supabase_0.24.5_linux_amd64.tar.gz"
      sha256 "da8f133c572a4738e6f7f0a34b7b7103180e839e679f8da611fb882e3e4ff998"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v0.24.5/supabase_0.24.5_linux_arm64.tar.gz"
      sha256 "c592daef5025bf5a3fc7d5f160ef799d4fb2189f07cb9e24dae3a90a5d08c68a"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
