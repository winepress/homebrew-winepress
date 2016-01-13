cask :v1 => 'planetside2' do
  version '1'
  sha256 '95464498ead3a9e47c5b3f7f46a1a170a2fbfd854f472c6d9c24c66e8dffa13e'
  url 'https://web.archive.org/web/20150909054550/https://launch.daybreakgames.com/installer/PS2_setup.exe'
  # mirror 'https://launch.daybreakgames.com/installer/PS2_setup.exe'

  name 'Planetside 2'
  homepage 'https://www.planetside2.com'

  win_exe ''
  install_exe 'PS2_setup.exe'

  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['corefonts', 'd3dx9_43', 'd3dcompiler_43', 'vcrun2008', 'vcrun2010']
end
