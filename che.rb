cask "che" do
  version "1.0.1"
  name "Safe"
  desc "Safe"
  homepage "https://github.com/tonsky/AnyBar"
  depends_on formula: "python@3.12"
  depends_on cask: "mitmproxy"
  depends_on formula: "copilothistoryexporter"


end
