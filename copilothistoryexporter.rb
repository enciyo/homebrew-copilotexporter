class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/51/45/b1968f2dea6d9a4fdea861603c4e6b78faffe6f5a76656e80284d77419c5/copilothistoryexporter-1.0.2.4.tar.gz"
  sha256 "0f7afa2313fd00a143b7ea18a7b83137d55d436ae40da2f68638ec75134de88a"
  depends_on "python@3.12"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
