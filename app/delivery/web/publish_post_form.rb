require 'delegate'

module Web
  class PublishPostForm < DelegateClass(::PublishPostForm)
    extend ActiveModel::Naming

    def initialize(*args)
      super(::PublishPostForm.new(*args))
    end

    def to_key
      nil
    end
  end
end
