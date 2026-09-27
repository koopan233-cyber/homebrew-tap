cask "wzstoryboard" do
  version "2.4.0"
  sha256 "450ff06040db4e4efb9bf42c53dda17936a83581d115ca55967ae10566bf9b3c"

  url "https://github.com/koopan233-cyber/wzstoryboard-release/releases/download/v2.4.0/wzstoryboard-2.4.0-arm64.dmg"
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
