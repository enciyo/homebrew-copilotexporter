class Copilotexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "c60d08e4a78444f345ce8e0766c6168093c041e7f8f87bd5b2af135d8dffd6d8"

  depends_on "python@3.9"  # Adjust if necessary

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
