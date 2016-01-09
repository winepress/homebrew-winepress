cask :v1 => 'curse-of-issyos' do
  version '1.0'
  sha256 '1e6f1dc329383ff1120202c830cdf927422d89fd59c3fabbabf85ab46ceb8a8a'
  url 'http://www.locomalito.com/juegos/Curse_of_Issyos.zip'

  name 'The Curse of Issyos'
  homepage 'http://www.locomalito.com/curse_of_issyos.php'

  win_exe 'Curse of Issyos.exe'

  wine_version '1.6'
  wine_arch 'win32'
end
