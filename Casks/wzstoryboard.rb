cask "wzstoryboard" do
  version "1.0.1"
  sha256 "847236a6ea7586ca57b4171dae70d87815a46a82934e1c4681bb10a732fac26d"

  url "https://github.com/koopan233-cyber/wzstoryboard-release/releases/download/v1.0.1/wzstoryboard-2.3.0-arm64.dmg"
  name "大柿编剧故事板"
  desc "编剧故事板工作台"
  homepage "https://wzstoryboard.cc"

  app "大柿编剧故事板.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/大柿编剧故事板.app"],
                   sudo: false
  end
end
