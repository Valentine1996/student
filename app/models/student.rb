class Student < ActiveRecord::Base
  belongs_to :Recordbook
  belongs_to :Faculty

  validates :fullname, presence: true,
      length: {maximum: 30}

  validates :group, presence: true,
      length: {maximum: 7}

  def self.search(search)
    if search
      where('fullname LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
