require 'chassis'
require 'concord'

require_relative 'domain/post'
require_relative 'domain/publish_post_form'
require_relative 'domain/post_repo'
require_relative 'domain/publish_post'

ValidationError = Class.new StandardError
