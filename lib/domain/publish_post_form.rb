class PublishPostForm
  include Chassis.form

  attribute :title, String
  attribute :text, String

  def validate
    fail ValidationError, :title_blank if title.to_s.strip.empty?
    fail ValidationError, :text_blank if text.to_s.strip.empty?
  end
end
