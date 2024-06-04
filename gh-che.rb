class GhChe < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/enciyo/gh-che"
  desc "This package exports the history of GitHub Copilot chat history."
  version "1.0.0"
  url "https://github.com/enciyo/gh-che/archive/refs/heads/main.zip"

  depends_on "python@3.11" => :build

  def install
      system "pip3 install . " + " --prefix=#{prefix}"
  end
  test do
    system bin/"che", "--help"
  end

end
