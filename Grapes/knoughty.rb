cask :v1 => 'knoughty' do
  version '0.1'
  sha256 '63fe65264e4040793e6e5f49d276eb1f029b3cc5bea7bae3a7b028a3ad5ccdb3'
  url 'http://www.mayothi.com/knoughty01.zip'
  name 'Knoughty'
  homepage 'http://www.mayothi.com/download.html'

  win_exe 'Knoughty.exe'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
end
