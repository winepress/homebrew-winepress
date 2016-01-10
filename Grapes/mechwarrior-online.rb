cask :v1 => 'mechwarrior-online' do
  version '1'
  sha256 ''
  url 'https://mwomercs.com/go/download?filename=MechWarriorOnlineInstaller.exe'
  name 'MechWarrior Online'
  homepage 'https://mwomercs.com'

  win_exe 'MechWarriorOnline.exe'
  install_exe 'MechWarriorOnlineInstaller.exe'

  depends_on []
  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['corefonts', 'd3dx9_43', 'msxml3', 'dotnet40', 'vcrun2010']
end


