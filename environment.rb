require 'rubygems'
require 'haml'
require 'sinatra' unless defined?(Sinatra)
require 'activerecord'


configure do
  SiteConfig = OpenStruct.new(
                 :title => 'The Hist List',
                 :author => 'Andy Moreland',
                 :url_base => 'http://hitlist.local/'
               )


  # access activerecord
  ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/library.sqlite3',
    :timeout => 5000
  )

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }
end
