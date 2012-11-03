class Package
  def initialize
    @backend = NullBackend.new
    @platform = NullPlatform.new
  end

  attr_accessor :app, :backend, :platform

  def wrapper_filename
    "#{backend.wrapper_basename}#{platform.wrapper_extension}"
  end
end

class NullPlatform
  def wrapper_extension; end
end

class MacPlatform
  def wrapper_extension
    '.app'
  end
end

class NullBackend
  def wrapper_basename; end
end

class SwtBackend
  def wrapper_basename
    'shoes-app-template-swt'
  end
end
