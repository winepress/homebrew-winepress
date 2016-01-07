cask :v1 => 'pirates777-razor' do
  version '1'
  sha256 '153dc3c7ea26387fff7cb66329c85ee4df23c001151caf1b3ff1d772a4fe8a10'
  url 'https://files.scene.org/get:nl-http/parties/2011/tokyodemofest11/demo/rzr-pirates_of_the_777_seas.zip'
  name 'Pirates of the 777 Seas by Razor 1911'
  homepage 'http://www.pouet.net/prod.php?which=56549'

  win_exe 'rzr-pirates_of_the_777_seas.exe'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
