class Judo < Formula
  desc "A more elegant way to play in the MUD"
  homepage "https://github.com/dhleong/judo"
  url "https://github.com/dhleong/judo/releases/download/1.2.1/judo-1.2.1.jar"
  sha256 "eafb6472799d78036f809192eaff8c14e2ab34ee5a5b16ff9320d812546c0016"

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
