# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way. Powered by Conventional Commits. Built for use with CI"
  homepage "https://upliftci.dev"
  version "2.21.0"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.21.0/uplift_2.21.0_darwin-x86_64.tar.gz"
      sha256 "248959fe24d3e2504ded1a7352cc336999ca7f7aa3da51b7f2124d2b9b7a4dac"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.21.0/uplift_2.21.0_darwin-arm64.tar.gz"
      sha256 "45351ec2894905f10c2eeeb9ec7670019815b5de328249e50cb27ed2f00556d7"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.21.0/uplift_2.21.0_linux-x86_64.tar.gz"
      sha256 "4c54510cd0303b5ed43584722f089e8ea9b37b15948084a474cd50c6dec3faef"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.21.0/uplift_2.21.0_linux-arm64.tar.gz"
      sha256 "f7ec00cf745928258308170dc79590f90c6b6cd518cd815381c556dccd1bcea2"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output

        man1.install "manpages/uplift.1.gz"
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
