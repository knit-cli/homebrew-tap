class Knit < Formula
  desc "Local-first CLI for coordinating cross-repo feature bundles"
  homepage "https://github.com/knit-cli/knit"
  version "0.1.0-alpha.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "374a42123f47742d327e6aebe4a287e7cc334a0695e505cfbb189d541ffd238c"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "48a5ef21f6b054eb2ed96fafb91fd8cae4412929989d85a613ec48f6b142a308"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e4267c88d3ac885338864e92af789123a19d867c6d290dff32cffb1de4742d7"
    else
      url "https://github.com/knit-cli/knit/releases/download/v#{version}/knit-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f506a9c1ab893ca871c277c393f8144ace0255e5f81d00db040c9329b92a0f80"
    end
  end

  def install
    bin.install "knit"
  end

  test do
    assert_match "knit", shell_output("#{bin}/knit --version")
  end
end
