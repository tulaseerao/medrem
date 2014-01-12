class Medname < ActiveRecord::Base

  def funky_method
    "#{self.name.camelize} #{self.strength}"
  end
end
