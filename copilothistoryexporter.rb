class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/3a/91/fa82e98d501e40f569a2f637e2fbe4714a5c03d4c095c8e482b3fd7c99fc/copilothistoryexporter-1.0.2.2.tar.gz"
  sha256 "9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
  depends_on "python@3.9"  # Adjust if necessary

  resource "six" do
    url "https://files.pythonhosted.org/packages/3a/91/fa82e98d501e40f569a2f637e2fbe4714a5c03d4c095c8e482b3fd7c99fc/copilothistoryexporter-1.0.2.2.tar.gz"
    sha256 "9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
