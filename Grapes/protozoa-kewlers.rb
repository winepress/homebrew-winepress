cask :v1 => 'protozoa-kewlers' do
  version '1'
  sha256 '4e58669fdddc460e842e97c2fb5198d6ccf1d90fd3af8d0825c89b13aa4e53d5'
  url 'https://files.scene.org/get:nl-http/demos/groups/kewlers/kwl_prtz.zip'
  name 'Protozoa by Kewlers'
  homepage 'http://www.pouet.net/prod.php?which=9471'

  win_exe 'PROTOZOA.EXE'

  depends_on []
  wine_version '1.8'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
