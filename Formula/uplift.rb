# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uplift < Formula
  desc "Semantic versioning the easy way"
  homepage "https://github.com/gembaadvantage/uplift"
  version "0.7.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.7.0/uplift_0.7.0_darwin-x86_64.tar.gz"
      sha256 "32eb42f4c06675c2719f2da480d7738c576350d2ed90a013cf0e1fb9ef8bfdd4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.7.0/uplift_0.7.0_darwin-arm64.tar.gz"
      sha256 "3528b868e7dc31eeca702ffefcf945f9d44f7cfedeb5316b4d6c44b2049cb05a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.7.0/uplift_0.7.0_linux-x86_64.tar.gz"
      sha256 "c4eeae44af184a2fac661019c195afe0db7a36d29a1cb05a7beb53550986fa2f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gembaadvantage/uplift/releases/download/v0.7.0/uplift_0.7.0_linux-arm64.tar.gz"
      sha256 "1d963efc79eb8a22a408eebd8bdf64d2c8efbb445a39cac0530edbe0a575d0d8"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "uplift"

    bash_output = Utils.safe_popen_read(bin/"uplift", "completion", "bash")
    (bash_completion/"uplift").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"uplift", "completion", "zsh")
    (zsh_completion/"_uplift").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"uplift", "completion", "fish")
    (fish_completion/"uplift.fish").write fish_output
  end

  test do
    installed_version = shell_output("#{bin}/uplift version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
