cask "mpx" do
  version "0.9.15"
  sha256 "3816427279a03ed5ff25979c6014e462382b576ed4e56a9bf96968a5960edab2"

  url "https://github.com/RovenEverward/my-proxy/releases/download/v#{version}/MPX-#{version}-macOS.dmg"
  name "MPX"
  desc "自建 xray / sing-box 多节点代理控制面(带 mpx 命令行)"
  homepage "https://github.com/RovenEverward/my-proxy"

  auto_updates true

  app "MPX.app"
  # 把 app 内的同一个 mpx 链接进 brew 的 bin:CLI 与桌面永远同版本,
  # 升级沿用 app 自更新,不引入第二个版本源。
  binary "#{appdir}/MPX.app/Contents/MacOS/mpx"

  # 包未签名:quarantine 标记会让内核直接杀掉 app 和链接出来的 mpx。
  # 签名在 roadmap(见 README),期间由安装方明确放行。
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MPX.app"]
  end

  zap trash: "~/.config/mpx"
end
