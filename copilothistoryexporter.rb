class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/a8/59/be3ec882235e834d8ffe9ced57edd7f4a7279ac85426d3697d580a1bc179/copilothistoryexporter-1.0.2.1.tar.gz"
  sha256 "b06afc4f605c5a429c2c05b754aae81a9a6f7bf6b02e8dcc8253dfbc2a3fb93a"

  depends_on "python@3.9"  # Adjust if necessary

  resource "six" do
    url "https://files.pythonhosted.org/packages/a8/59/be3ec882235e834d8ffe9ced57edd7f4a7279ac85426d3697d580a1bc179/copilothistoryexporter-1.0.2.1.tar.gz"
    sha256 "b06afc4f605c5a429c2c05b754aae81a9a6f7bf6b02e8dcc8253dfbc2a3fb93a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
