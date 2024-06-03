class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/91/e2/c4e3ce6619afa6a78ce41f5272d60f45e1aff4f5cad0b6ec3f41aaa8366d/copilothistoryexporter-1.2.6.tar.gz"

  depends_on "python@3.11"  # Adjust if necessary

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilothistoryexporter", "--help"
  end

end
