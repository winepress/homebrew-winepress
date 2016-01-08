cask :v1 => 'xmplay' do
  version '3.8.2'
  sha256 'a6a2f4431cf3e637374bad680774fc452de5e1c74a379732d59789673f53a952'
  url 'http://www.un4seen.com/files/xmplay38.zip'

  name 'XMPlay'
  homepage 'http://www.un4seen.com/xmplay.html'

  win_exe 'xmplay.exe'

  wine_version '1.5'
  wine_arch 'win32'
end
