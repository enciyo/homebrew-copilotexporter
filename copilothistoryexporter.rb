class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/c6/6d/0d4dcb726b6d0e2c654baa115d310f8cbbef9e97be44698ad222f51229f4/copilothistoryexporter-1.2.4.tar.gz"

  depends_on "python@3.12"  # Adjust if necessary
  depends_on "mitmproxy"


  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources
    venv.pip_install_and_link buildpath

  end


  test do
    system bin/"copilothistoryexporter", "--help"
  end

end
