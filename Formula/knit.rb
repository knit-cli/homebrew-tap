class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/marc-merino/knit"
  version "0.1.0-alpha.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "580e9122eaf9b79e96ddeb11288dae6bff0dc22eca241cc75a120aab602a1432"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c990d5bdc5073b28fe8f56cb4197068ec0b385dc0e3a12df49f6803a9b7c43d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea4ec69f748bd55ad34980638b096d0b5b2868da2530e4701f7ccbd8ac10bf21"
    else
      url "https://github.com/marc-merino/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fbe8fdbebc839bd94da76e258735dca28cb91ce50ad79776c47f0d53e8dac01e"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
