cask :v1 => 'qdir' do
  version '6.23'
  sha256 'ec83454e301230c3b76853194c62224c342c3cce4490ab139f2ea4b11ff74523'
  url 'http://www.softwareok.com/Download/Q-Dir_Portable.zip'

  name 'Q-Dir'
  homepage 'http://www.softwareok.com/?seite=Freeware/Q-Dir'

  win_exe 'Q-Dir.exe'

  wine_version '1.6'
  wine_arch 'win32'
end
