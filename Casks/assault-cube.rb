cask :v1 => 'assault-cube' do
  version '1.2.0.2'
  sha256 'ee69217202a66a518a688980e55ab2bd278fe46ad47461cf2a6eeef353d5e9e9'
  url 'https://www.mirrorservice.org/sites/downloads.sourceforge.net/p/po/portableapps/Assault%20Cube%20Portable/AssaultCubePortable_1.2.0.2_English.paf.exe'
  name 'Assault Cube'
  homepage 'http://assault.cubers.net/'

  win_exe 'AssaultCubePortable_1.2.0.2_English.paf.exe'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
