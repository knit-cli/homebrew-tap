class Sv < Formula
  desc "Terminal front end for Svartal: sign in, list machines, open shells"
  homepage "https://github.com/marc-merino/svartal-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/svartal-cli/releases/download/v#{version}/sv-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8934a4cfe26a3874dc1fb20c7e269f2b839ea0e8ed0c8af13b9a9174e4661dfa"
    else
      url "https://github.com/marc-merino/svartal-cli/releases/download/v#{version}/sv-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6617d6ea654614f39297df9569f79cdd4a82e1aff06551f196d1995b65afedc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marc-merino/svartal-cli/releases/download/v#{version}/sv-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49f879253d5f885feb8d2c16e2753acb93521f5d7584bf27ae3209824a537322"
    else
      url "https://github.com/marc-merino/svartal-cli/releases/download/v#{version}/sv-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6b30e1da36cd9a933008e264a515c34ea321d597b3fb5febd8069266dc89477"
    end
  end

  def install
    bin.install "sv"
    # Archives carry completions/ from v0.1.1 on; v0.1.0 is the binary alone.
    bash_completion.install "completions/sv.bash" => "sv" if File.exist?("completions/sv.bash")
    zsh_completion.install "completions/sv.zsh" => "_sv" if File.exist?("completions/sv.zsh")
  end

  test do
    assert_match "sv", shell_output("#{bin}/sv --version")
  end
end
