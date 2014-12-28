class Faculty < ActiveRecord::Base
  validates :name, presence: true,
      length: {maximum: 30}

  validates :information, presence: true,
      length: {maximum: 3000}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
