class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.3"
  url "https://github.com/enciyo/gh-che/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "cb60aa605f1efdd56b984a3f9789b9b172a04569322ea7c7e64de07871084873"

  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end

  test do
    system "#{bin}/gh-che", "--version"
  end

end
