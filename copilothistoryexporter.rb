class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "h9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
  sha256 "9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
  depends_on "python@3.9"  # Adjust if necessary

  resource "six" do
    url "h9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
    sha256 "9d6a73640b125c19eb6b6d1e409aea19eba70b554e7518557a3ecd78d3d8a104"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
