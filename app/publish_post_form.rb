class PublishPostForm
  include Chassis.form

  attribute :title, String
  attribute :text, String
end
