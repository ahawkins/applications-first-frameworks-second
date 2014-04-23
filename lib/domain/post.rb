class Post
  include Chassis::Initializable
  include Chassis::Persistence

  attr_accessor :title, :text
end

