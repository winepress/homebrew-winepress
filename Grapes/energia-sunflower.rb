cask :v1 => 'energia-sunflower' do
  version '1'
  sha256 'ba3869a0681834fa01406e76cd9c4f2540001dafaf490d85b5cc7803ca701598'
  url 'https://files.scene.org/get:nl-http/parties/2001/assembly01/demo/energia_by_sunflower.zip'
  name 'Energia by Sunflower'
  homepage 'http://www.pouet.net/prod.php?which=3290'

  win_exe 'energia.exe'

  depends_on []
  wine_version '1.7'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
