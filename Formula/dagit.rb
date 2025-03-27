# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagit < Formula
  desc "Live DAG visual of Git's internals"
  homepage "https://github.com/jdoiro3/dagit"
  version "0.2.0"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jdoiro3/dagit/releases/download/v0.2.0/dagit_Darwin_x86_64"
      sha256 "755f494562bd1d8d462b0bb224117ffefa97583e7c25c87abe84fa19cc9fe372"

      def install
        bin.install "dagit_Darwin_x86_64" => "dagit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jdoiro3/dagit/releases/download/v0.2.0/dagit_Darwin_arm64"
      sha256 "164c33498d511cd86ff0bdf193421bc20c2253a53eef7faaf2c9941ee3e9bbdc"

      def install
        bin.install "dagit_Darwin_arm64" => "dagit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jdoiro3/dagit/releases/download/v0.2.0/dagit_Linux_x86_64"
        sha256 "b7c54ee74491612bf5aec20c5c033b8a2aea627c310cff47971621d3d80dfa63"

        def install
          bin.install "dagit_Linux_x86_64" => "dagit"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jdoiro3/dagit/releases/download/v0.2.0/dagit_Linux_arm64"
        sha256 "9e920d0fe1ef6ab584310656eb0dabb63b62679ca2f8b7ec99bc64558f7fa697"

        def install
          bin.install "dagit_Linux_arm64" => "dagit"
        end
      end
    end
  end
end
