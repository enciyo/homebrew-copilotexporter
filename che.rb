cask "che" do
  version "1.0.0"

  url "https://files.pythonhosted.org/packages/c6/6d/0d4dcb726b6d0e2c654baa115d310f8cbbef9e97be44698ad222f51229f4/copilothistoryexporter-1.2.4.tar.gz"
  name "AnyBar"
  desc "Menu bar status indicator"
  homepage "https://github.com/tonsky/AnyBar"
  depends_on formula: "python@3.11"
  depends_on formula: "copilothistoryexporter"
  depends_on cask: "mitmproxy"

  binary "che"

end
