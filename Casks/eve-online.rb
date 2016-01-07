cask :v1 => 'eve-online' do
  version '1'
  sha256 'ee69217202a66a518a688980e55ab2bd278fe46ad47461cf2a6eeef353d5e9e9'
  url 'http://binaries.eveonline.com/EveLauncher-995234.exe'
  name 'EVE Online'
  homepage 'https://www.eveonline.com/'

  win_exe 'ExeFile.exe'
  win_exe_path 'C:\Program Files\CCP\EVE\bin\ExeFile.exe'

  depends_on []
  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['corefonts', 'd3dx9_36', 'vcrun2005', 'vcrun2008', 'vcrun2010']
end
