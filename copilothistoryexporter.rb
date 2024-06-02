class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://files.pythonhosted.org/packages/c1/f2/32e8b7e821728bbf09f87774f7d2438b7f48dae74437b7f8419a7c6060b3/copilothistoryexporter-1.0.2.5.tar.gz"
  sha256 "d74ea8dfa62eefe71be10ca4e1e8e4f4383441f1cf1088a1f982a902ba165799"
  depends_on "python@3.9"  # Adjust if necessary



  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
