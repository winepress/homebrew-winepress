cask :v1 => 'planetside2' do
  version '1'
  sha256 ''
  url 'https://launch.daybreakgames.com/installer/PS2_setup.exe'
  name 'Planetside 2'
  homepage 'https://www.planetside2.com'

  win_exe ''
  install_exe 'PS2_setup.exe'

  depends_on []
  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['corefonts', 'd3dx9_43', 'd3dcompiler_43', 'vcrun2008', 'vcrun2010']
end