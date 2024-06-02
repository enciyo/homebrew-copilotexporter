class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/4c/d1/f76bc96d7af0dbb1a8053759bcab3bf6e4de8d26bf35dd63b64cf5609126/copilothistoryexporter-1.0.2.3.tar.gz"
  sha256 "de4653ff61102026b8454afcd5bcafc92f2a78974d66e43b6b066e041ca5a434"
  depends_on "python@3.9"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
