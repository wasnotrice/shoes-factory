class DownloadsController < ApplicationController
  def index
    dl = Struct.new(:name, :url)
    @jruby_downloads = [
      dl.new("JRuby 1.7.0 Complete .jar", "http://jruby.org.s3.amazonaws.com/downloads/1.7.0/jruby-complete-1.7.0.jar")
    ]
  end
end
