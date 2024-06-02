class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v1.0.14.tar.gz"
  sha256 "4a20716b774168316d56f0ffd7f9f076ee84ae3eac507e09b874cf156a127db1"
  depends_on "python@3.9"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
