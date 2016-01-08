cask :v1 => 'konnectonator' do
  version '0.11'
  sha256 'c918f5037cc5a769866a271cf466643196625e246b29739fb1c5d756470fc638'
  url 'http://www.mayothi.com/konnect01.zip'
  depends_on 'http://www.mayothi.com/depend.zip'
  name 'Konnectonator'
  homepage 'http://www.mayothi.com/download.html'

  win_exe 'Konnectonator.exe'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
end
