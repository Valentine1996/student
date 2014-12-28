class Recordbook < ActiveRecord::Base

  validates :gpatests,presence:true, numericality: {only_float: true}

  validates :gpaexams,presence:true, numericality: {only_float: true}

  validates :bursaly, presence:true, numericality: true

  def self.search(search)
    if search
      where('gpatests LIKE ? OR bursaly LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
