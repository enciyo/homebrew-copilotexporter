class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.7"
  url "https://github.com/enciyo/gh-che/archive/refs/tags/v#{version}.tar.gz"
  depends_on "python@3.11" => :build

  def install
      system "pip3 install --upgrade pip"
      system "pip3 install . " + " --prefix=#{prefix}"
  end

  
  test do
    system "#{bin}/gh-che", "--version"
  end

end
