class Song < ApplicationRecord
	self.table_name = "song"
	
	

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR singer_band LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end
