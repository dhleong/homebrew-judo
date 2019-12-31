class Judo < Formula
  desc "A more elegant way to play in the MUD"
  homepage "https://github.com/dhleong/judo"
  url "https://github.com/dhleong/judo/releases/download/1.13.0/judo-1.13.0.jar"
  sha256 "8f4b7491c9e15b1bb56a847057dac8f36f4e24faf8c112dc5c1e36e6e13b3ffa"

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
