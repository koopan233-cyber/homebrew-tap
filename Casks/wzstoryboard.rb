cask "wzstoryboard" do
  version "2.3.2"
  sha256 "1d38f903f6de8b1e08f5aa16d735db6c5e167eb25590e9896d56999cb30600cd"

  url "https://github.com/koopan233-cyber/wzstoryboard-release/releases/download/v2.3.2/wzstoryboard-2.3.2-arm64.dmg"
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
