cask "mpx" do
  version "0.9.15"
  sha256 "3816427279a03ed5ff25979c6014e462382b576ed4e56a9bf96968a5960edab2"

  url "https://github.com/RovenEverward/my-proxy/releases/download/v#{version}/MPX-#{version}-macOS.dmg",
      verified: "github.com/RovenEverward/my-proxy/"
  name "MPX"
  desc "自建 xray / sing-box 多节点代理控制面(带 mpx 命令行)"
  homepage "https://github.com/RovenEverward/my-proxy"

  auto_updates true
  # 包未签名,隔离标记会让内核直接杀掉 app 与 CLI(签名在 roadmap,见 README)。
  no_quarantine true

  app "MPX.app"
  # 把 app 内的同一个 mpx 链接进 brew 的 bin:CLI 与桌面永远同版本,
  # 升级沿用 app 自更新,不引入第二个版本源。
  binary "#{appdir}/MPX.app/Contents/MacOS/mpx"

  zap trash: "~/.config/mpx"
end
