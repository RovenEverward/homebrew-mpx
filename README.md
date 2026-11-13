# homebrew-mpx

MPX 的 Homebrew tap。一条命令同时装 `MPX.app` 和 `mpx` 命令行:

```bash
brew tap RovenEverward/mpx
brew install --cask mpx
```

或一步到位:

```bash
brew install --cask RovenEverward/mpx/mpx
```

安装后 `mpx` 在 Homebrew 的 bin 目录;包未签名,首次打开 `MPX.app` 请右键 →「打开」。

升级沿用 MPX 桌面程序自身的「更新」按钮(`auto_updates`),也可以用 `brew upgrade --cask mpx`。

cask 的版本与 SHA256 由 my-proxy 的发版流水线自动更新。
