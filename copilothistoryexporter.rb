class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "be6f45fcfccdcd5a5064b222423a0e35b0cd1a66284ec29376c0598a317200e9"

  depends_on "python@3.9"  # Adjust if necessary

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
