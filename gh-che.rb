class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.3"
  url "https://github.com/enciyo/gh-che/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "74f3304721e926d4d988e2a44077ec076a827e25893a915a75b1a6408f414ed1"

  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end

  test do
    system "#{bin}/gh-che", "--version"
  end

end
