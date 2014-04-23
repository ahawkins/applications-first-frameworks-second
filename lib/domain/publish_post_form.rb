class PublishPostForm
  include Chassis.form

  attribute :title, String
  attribute :text, String

  def validate
    fail ValidationError, :title_blank unless title
    fail ValidationError, :text_blank unless text
  end
end
