class ActiveRecordRepo < Chassis::BaseRepo
  class Mapper
    def clear
      ::PostRow.destroy_all
    end

    def create(record)
      row = ::PostRow.create({
        title: record.title,
        text: record.text
      })

      record.id = row.id

      record
    end

    def empty?(klass)
      !::PostRow.exists?
    end

    def all(klass)
      ::PostRow.all.map do |row|
        ::Post.new row.attributes
      end
    end

    def get(klass, id)
      row = ::PostRow.find id

      Post.new row.attributes
    end
  end

  def initialize
    @map = Mapper.new
  end

  def create(record)
    map.create record
  end

  def empty?(klass)
    map.empty?(klass)
  end
end
