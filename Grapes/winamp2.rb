cask :v1 => 'winamp2' do
  version '2.95'
  sha256 'ef1423999cbefd4f2a3a98acee2b194a4260268cb4517abda9f12963e866b7e5'
  url 'http://www.oldapps.com/winamp.php?app=1f19a5f196d8d79880d9b66d160034b6'
  mirror 'http://www.audioman.dynip.com/ftp/FtpSite/Programs/Winamp/winamp295rc_full.exe'
  # magnet 'magnet:?xt=urn:btih:ACF9FE0024F0A4B609E840E4113ED05649D7609A&dn=winamp295rc_full+exe&tr=http%3A%2F%2Fbigfoot1942.sektori.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A80&tr=udp%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2710%2Fannounce&tr=udp%3A%2F%2Ftorrent.gresille.org%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.tfile.me%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&tr=udp%3A%2F%2F9.rarbg.me%3A2710%2Fannounce&tr=http%3A%2F%2Ftracker.trackerfix.com%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969%2Fannounce&tr=udp%3A%2F%2Fp4p.arenabg.com%3A1337&tr=udp%3A%2F%2Fcoppersurfer.tk%3A6969%2Fannounce'

  name 'WinAmp 2'
  homepage 'https://web.archive.org/web/20020808092636/http://www.winamp.com/'

  win_exe 'winamp295rc_full.exe'
  wine_install_flags '/S'

  depends_on []
  wine_version '1.4'
  wine_arch 'win32'
  wine_tricks []
end
