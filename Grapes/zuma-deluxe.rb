cask :v1 => 'zuma-deluxe' do
  version '1'
  sha256 'ac0a004b3c1b76e3494093bb19da319b0d5af325606c4be5794ceed34b9d2102'
  url 'magnet:?xt=urn:btih:3d55da3bda146447169c3de06d256c258c3236ae&dn=Zuma+Deluxe+%28Full+Pre-Cracked+Portable+PopCap+Games%29&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969', :using => :magnet
  name 'Zuma Deluxe'
  homepage 'http://www.bigfishgames.com/games/220/zuma/'

  win_exe 'Zuma.exe'

  depends_on []
  wine_version '1.6'
  wine_arch 'win32'
  wine_tricks ['winxp']
end
