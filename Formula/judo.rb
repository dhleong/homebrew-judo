class Judo < Formula
  desc "A more elegant way to play in the MUD"
  homepage "https://github.com/dhleong/judo"
  url "https://github.com/dhleong/judo/releases/download/1.3.2/judo-1.3.2.jar"
  sha256 "5dfb71de418795bec467527e85033adbb879a436a65b90a310cb35af067cbcd1"

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
