class Judo < Formula
  desc "A more elegant way to play in the MUD"
  homepage "https://github.com/dhleong/judo"
  url "https://github.com/dhleong/judo/releases/download/1.4.2/judo-1.4.2.jar"
  sha256 "de05a4851bb3523d92a159b0e58c6d24f2703e07dd22764e6afb6006e9d4d174"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "judo-#{version}.jar"
    bin.write_jar_script libexec/"judo-#{version}.jar", "judo"
  end

  test do
    assert_match "judo version #{version}", pipe_output("#{bin}/judo --version")
  end
end
