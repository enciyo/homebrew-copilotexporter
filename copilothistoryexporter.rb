class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ce549cbe1d43f5d5c5c857a4cf6b407f9b1554cffb28f24dbf0da04024fd542d"

  depends_on "python@3.9"  # Adjust if necessary

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
