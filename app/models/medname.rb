class Medname < ActiveRecord::Base

  def funky_method
    "#{self.name.camelize.html_safe} #{self.strength}"
  end

  def self.import(file)
     spreadsheet = Import::Uploader.open_spreadsheet(file)
     # spreadsheet.default_sheet = "A"
     Processheet.process_all(file)
     # Processheet.process_spreadsheet(spreadsheet,self)
  end

  def self.process_result(row)
    # if colmn = ['name','strength','form'].find {|col| row[col] }
    #   medname = where({"#{colmn}"=> row[colmn]}).first || new
    #   medname.attributes = row
    #   medname.save!
    # else
      # row['name'] = row['name'].gsub('&reg','&reg;')
      where(row).first_or_create
    # end
  end

end
