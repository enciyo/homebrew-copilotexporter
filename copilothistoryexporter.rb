class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v1.0.10.tar.gz"
  sha256 "69d7575ee930a852393dfbd0ded1b36cd363981d2e4774733fe442b7d1ce5269"
  depends_on "python@3.9"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
