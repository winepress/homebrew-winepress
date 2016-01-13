cask :v1 => 'eve-online' do
  version '1'
  sha256 'b297a2136b14ddbe4fea824158e81f2cd8c9fbedc7dabf48dc7ef691c7b99528'
  url 'https://web.archive.org/web/20160113220656/http://binaries.eveonline.com/EveLauncher-995234.exe'
  name 'EVE Online'
  homepage 'https://www.eveonline.com/'

  win_exe 'ExeFile.exe'

  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['corefonts', 'd3dx9_36', 'd3dx9_42', 'vcrun2005', 'vcrun2008', 'vcrun2010', 'gecko']
end
