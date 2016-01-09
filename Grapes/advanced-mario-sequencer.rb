cask :v1 => 'advanced-mario-sequencer' do
  version '3.3'
  sha256 '8735a48236ed823d687186db98fbc3a541fe765ae792a9fb912ec9899e369298'
  url 'https://flyx.org/files/AMS_Win32_3.3.zip'

  name 'Mario Paint Composer'
  homepage 'https://flyx.org/projects/ams/'

  win_exe 'Advanced Mario Sequencer.exe'

  wine_version '1.5'
  wine_arch 'win32'
end
