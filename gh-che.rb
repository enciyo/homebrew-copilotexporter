class GhChe < Formula
  include Language::Python::Virtualenv

  # read from the version git spesific repository
  raw_url = "https://raw.githubusercontent.com/enciyo/gh-che/main/che.properties"
  sh = `curl -s #{raw_url}`
  version = sh.split("\n").select { |line| line.include? "version" }[0].split("=")[1]


  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version version
  url "https://github.com/enciyo/gh-che/archive/refs/tags/#{version}.tar.gz"
  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end


  test do
    system "#{bin}/gh-che", "--version"
  end

end
