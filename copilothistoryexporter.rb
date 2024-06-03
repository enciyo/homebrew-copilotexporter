class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/91/e2/c4e3ce6619afa6a78ce41f5272d60f45e1aff4f5cad0b6ec3f41aaa8366d/copilothistoryexporter-1.2.6.tar.gz"
  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilothistoryexporter", "--help"
  end

end
