cask :v1 => 'tesla-sunflower' do
  version '1'
  sha256 '6a354dd5e91045b738071fd6ec7e894de3ea1959c53bb160cb570821912b3dee'
  url 'https://files.scene.org/get:nl-http/demos/groups/sunflower/tesla_sunflower.zip'
  name 'Tesla by Sunflower'
  homepage 'http://www.pouet.net/prod.php?which=33'

  win_exe 'tesla.exe'

  depends_on []
  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['winxp', 'dotnet20sp2']
end
