class Hbc::CLI::Run < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    cask_token = cask_tokens.first
    cask_path = Hbc.path(cask_token)

    retval = run_cask cask_token
    # retval is ternary: true/false/nil
    if retval.nil?
      raise Hbc::CaskError.new("nothing to run")
    elsif ! retval
      raise Hbc::CaskError.new("error while executing")
    end
  end

  def self.run_cask(cask_token)
    cask = Hbc.load(cask_token)

    if ! cask.installed?
      raise Hbc::CaskError.new("cask not installed")
    end

    command=Hbc::SystemCommand
    exe_path = Pathname.new('/usr/local/bin').join(cask.token)
    command.run('sh', :args => [exe_path])
  end

  def self.help
    "run the given Cask"
  end
end
