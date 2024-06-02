class Copilothistoryexporter < Formula
  include Language::Python::Virtualenv

  desc "This package exports the history of GitHub Copilot chat history."
  homepage "https://github.com/enciyo/gh-copilot-history-export"
  url "https://github.com/enciyo/gh-copilot-history-export/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "c2681c76b3c962b0a8b465713e5db6ac223384d3e2b665c10fef53edc1acdb84"

  depends_on "python@3.9"  # Adjust if necessary

  def install
      # Create a virtualenv in `libexec`.
      venv = virtualenv_create(libexec, "python3.y")
      venv.pip_install resources
      venv.pip_install .
      venv.pip_install_and_link buildpath
  end

  test do
    system bin/"copilotexporter", "--hep"
  end

end
