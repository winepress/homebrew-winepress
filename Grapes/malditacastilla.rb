cask :v1 => 'malditacastilla' do
  version '1.1'
  sha256 '3bac1b9f889d79d7335d2c3c7c6d8f24e93ebeb9eccad08ab2464df7da9f9837'
  url 'http://www.locomalito.com/juegos/Maldita_Castilla_1_1.zip'

  name 'Maldita Castilla'
  homepage 'http://www.locomalito.com/maldita_castilla.php'

  win_exe 'maldita_castilla_arcade_cabinet.exe'

  wine_version '1.6'
  wine_arch 'win32'
end
