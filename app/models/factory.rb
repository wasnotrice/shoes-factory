require 'package'

class Factory
  attr_writer :package_source

  def new_package
    package_source.call
  end

  private
  def package_source
    @package_source ||= Package.new
  end
end
