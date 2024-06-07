class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.3"
  url "https://github.com/enciyo/gh-che/releases/tag/v1.0.3"
  sha256 "287421e7356fcc8b8d7fe19d4f97e070017b692dddb5f9fdbdd9fac8497c1a2a"

  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end

  test do
    system "#{bin}/gh-che", "--version"
  end

end
