class Lecturer < ActiveRecord::Base

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end

  validates :fullname, presence: true,
      length: {maximum: 60}

  validates :degree, presence: true,
      length: {maximum: 32}

  validates :salary, presence:true, numericality: true

  def self.search(search)
    if search
      where('fullname LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
