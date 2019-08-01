require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/form_helpers'
require_relative '../helpers/layout_helper.rb'
class BaseController < Sinatra::Base
  set views: proc { File.join(root, '../views/') }
  enable :sessions
  set :static, true
  use Rack::Static, urls: ['/images'], root: 'public'

  register Sinatra::ActiveRecordExtension
  register Sinatra::Flash
  register Sinatra::Contrib
  register Sinatra::Namespace

  helpers Sinatra::FormHelpers
  include LayoutHelper
end
