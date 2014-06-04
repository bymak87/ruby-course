module DoubleDog
  module Database

  class SQLiteDatabase
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :databse => 'double-dog_test.db'
      )
  end

  class User < ActiveRecord::Base
    has_many :order
  end

  class Order < ActiveRecord::Base
    belongs_to :user
  end

  class Item < ActiveRecord::Base
    belongs_to :order
  end

  def create_user(attrs)
    ar_user = User.create(attrs)
    DoubleDog::User.new(ar_user.attributes)
  end

  end
end
