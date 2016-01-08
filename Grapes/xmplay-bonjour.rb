cask :v1 => 'xmplay-bonjour' do
  version '1.0'
  sha256 'eecef7c2f636fcf139aa165e1056bfdbc32bd9193f71eedd6d139bc39c5695dd'
  url 'https://support.xmplay.com/files/10/Bonjour,_BS2000.zip\?v\=214585'

  name 'XMPlay: Bonjour, BS2000 skin'
  homepage 'https://support.xmplay.com/files_view.php?file_id=291'

  depends_on :grape => 'xmplay'
  addon_to :grape => 'xmplay'

  wine_version '1.5'
  wine_arch 'win32'
end
