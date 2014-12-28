class Lesson < ActiveRecord::Base
  belongs_to :lecturer

  validates :name, presence: true,
      length: {maximum: 32}

  def self.search(search)
    if search
      where('name  LIKE ?' , "%#{search}%")
    else
      all
    end
  end
end
