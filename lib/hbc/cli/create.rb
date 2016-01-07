require "digest"

class Hbc::CLI::Create < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    cask_token = cask_tokens.first.sub(/\.rb$/i,'')
    cask_path = Hbc.path(cask_token)
    odebug "Creating Cask #{cask_token}"

    url = ARGV.named.first
    print url

    if cask_path.exist?
      raise Hbc::CaskAlreadyCreatedError.new cask_token
    end

    #File.open(cask_path, 'w') do |f|
      #f.write template(cask_token, url)
    #end

    # exec_editor cask_path
  end

  # for mocking
  # todo: add an :exec parameter to SystemCommand
  def self.exec_editor(*args)
    Hbc::Utils.exec_editor(*args)
  end

  def self.template(cask_token, url)
    r = Resource.new
    r.url(url)
    sha256 = r.fetch.sha256

    version = 1
    dsl_version = 1

    return
    <<-EOS.undent
      cask :v#{dsl_version} => '#{cask_token}' do
        version '#{version}'
        sha256 '#{sha254}'

        url '#{url}'
        name ''
        homepage ''
        license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

        win_exe ''

        depends_on []
        wine_version ''
        wine_arch ''
        wine_tricks []
      end
    EOS
  end

  def self.help
    "creates the given Cask and opens it in an editor"
  end
end
