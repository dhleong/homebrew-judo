class Judo < Formula
  desc "A more elegant way to play in the MUD"
  homepage "https://github.com/dhleong/judo"
  url "https://github.com/dhleong/judo/releases/download/1.11.2/judo-1.11.2.jar"
  sha256 "5e18bc52fbe51d496fd58b36cd48ed314cf828862a4cac2b89eafd2dab60b926"

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
