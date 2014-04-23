class Post
  attr_accessor :title, :text

  def initialize(hash = {})
    hash.each_pair do |key, value|
      send "#{key}=", value
    end
  end
end

