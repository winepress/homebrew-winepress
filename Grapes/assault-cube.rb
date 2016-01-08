cask :v1 => 'assault-cube' do
  version '1.2.0.2'
  sha256 'f048f6f046b4954dfd9c3e41a6b48b94167f8f93847dbf2a7820fdef4b85ea7e'
  url 'https://github.com/assaultcube/AC/releases/download/v1.2.0.2/AssaultCube_v1.2.0.2.exe'
  name 'Assault Cube'
  homepage 'http://assault.cubers.net/'

  win_exe 'AssaultCube_v1.2.0.2.exe'
  wine_install_flags '/S'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
