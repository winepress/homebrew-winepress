cask :v1 => 'lastone-razor' do
  version '1'
  sha256 'bb246337d8a6ff30abc053f55138f50bf082ba8d2706c6b67e53eb82387b0d13'
  url 'https://files.scene.org/get:nl-http/parties/2003/equinoxe03/intro/razor_1911__demo_division-last_one.zip'
  name 'Last One by Razor 1911'
  homepage 'http://www.pouet.net/prod.php?which=9108'

  win_exe 'last_one.exe'

  wine_version '1.6'
  wine_arch 'win32'
end
