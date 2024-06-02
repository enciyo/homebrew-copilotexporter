class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/85/80/97ab3cb15f97140054993424a41124205f2aa98f5f74301a39b583bf2510/copilothistoryexporter-1.0.2.6.tar.gz"
  sha256 "019d0df8f8ed08e652a019d219be7380fc16eee2bcd44315b726a26cce81656f"
  depends_on "python@3.9"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
