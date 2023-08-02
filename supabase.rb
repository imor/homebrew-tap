# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
    desc "Supabase CLI"
    homepage "https://supabase.com"
    version "1.82.5"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/cli/releases/download/v1.82.5/supabase_darwin_arm64.tar.gz"
        sha256 "a04e826ea8da2ac060f6f77c21428dcb7766cae964658482ec5a211313d0c8aa"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.82.5/supabase_darwin_amd64.tar.gz"
        sha256 "0f26b5263d444eb9e2c1814afc20d95ec0fe6ba2e51fabb962480d0f049fdad5"
  
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
        url "https://github.com/supabase/cli/releases/download/v1.82.5/supabase_linux_arm64.tar.gz"
        sha256 "efc0a4fa1dbe3c68951f0aab85f0401bb21ca9df934327591f1e267343fb2547"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.82.5/supabase_linux_amd64.tar.gz"
        sha256 "85fd11a76ca211ee3bfdbd008c1e2ea1e2588988d8d2b3164432a68f0d65dc45"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  end