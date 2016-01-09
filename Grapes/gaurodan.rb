cask :v1 => 'gaurodan' do
  version '1.1'
  sha256 '2d5e8b58e42dae4c3cd3269db6b533c0fa8840abe733a6751dfbd59b45874c4d'
  url 'http://www.locomalito.com/juegos/Gaurodan_1_1.zip'

  name 'Gaurodan'
  homepage 'http://www.locomalito.com/gaurodan.php'

  win_exe 'Gaurodan.exe'

  wine_version '1.6'
  wine_arch 'win32'
end
