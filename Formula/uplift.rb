# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.1.0/uplift_2.1.0_darwin-arm64.tar.gz"
      sha256 "5572dfc45124342fad6618bf498436f4d135cf27dfc09e85e3899bdeacbc598d"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.1.0/uplift_2.1.0_darwin-x86_64.tar.gz"
      sha256 "bf0720690c9d4e67712f0fb25b47e869bd10338a0009b37c6c4d3509a08d62c4"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.1.0/uplift_2.1.0_linux-arm64.tar.gz"
      sha256 "34a41ddf1fb73d7c185418aa4857f05567556fd351bbdf91057744b063eee954"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v2.1.0/uplift_2.1.0_linux-x86_64.tar.gz"
      sha256 "f1642d0e8b1b20a8605f20e74da5be30311891c13a23f365033a36969f66f753"

      def install
        bin.install "uplift"

        bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
        (bash_completion/"uplift").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
        (zsh_completion/"_uplift").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
        (fish_completion/"uplift.fish").write fish_output
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
