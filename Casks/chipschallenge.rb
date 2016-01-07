cask :v1 => 'chipschallenge' do
  version '1.0'
  sha256 '8735a48236ed823d687186db98fbc3a541fe765ae792a9fb912ec9899e369298'
  url 'http://www.scuzzstuff.org/chipschallenge/cclp2.zip'

  name 'Chip's Challenge'
  homepage 'https://en.wikipedia.org/wiki/Chip%27s_Challenge'

  win_exe 'CHIPS.EXE'
  wine_install_flags '/S'

  wine_version '1.0'
  wine_arch 'win32'
end
