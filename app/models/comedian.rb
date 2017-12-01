
class Comedian < ActiveRecord::Base
  has_many :specials

  def self.specials
    specials = Special.where(comedian_id: "#{self.id}")
    specials.update(name: self.name, age: self.age)
  end

end
