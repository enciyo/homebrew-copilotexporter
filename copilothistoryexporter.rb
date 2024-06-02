class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/87/2c/f426e75662e1ab8951f1d80a2ce4d6359c61e64f46a95dd62635833c6536/copilothistoryexporter-1.0.2.tar.gz"
  sha256 "1c58de2d9ff18835f020fde0b4a06891ddbac9c0d7a8f2331a63232eeec40e7f"

  depends_on "python@3.9"  # Adjust if necessary

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
