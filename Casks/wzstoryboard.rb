cask "wzstoryboard" do
  version "2.3.1"
  sha256 "275eccb373aeca733f7bcf4cb64ee54c040444a16d4b25f4053cfb2a81e3d7b4"

  url "https://github.com/koopan233-cyber/wzstoryboard-release/releases/download/v2.3.1/wzstoryboard-2.3.1-arm64.dmg"
  name "大柿编剧故事板"
  desc "编剧故事板工作台"
  homepage "https://wzstoryboard.cc"

  app "大柿编剧故事板.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/大柿编剧故事板.app"],
        sudo: false
  end
end
