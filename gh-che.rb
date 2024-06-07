class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.3"
  url "https://github.com/enciyo/gh-che/archive/refs/heads/main.zip"
  sha256 "ff6ed787298dd406f3e3ceab429a53e273b90ac05ed0c8a3b4eeb6fcd3371d0d"

  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end

  test do
    system "#{bin}/gh-che", "--version"
  end

end
