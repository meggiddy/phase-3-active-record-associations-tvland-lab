class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map(&:full_name)
  end

  def show_characters
    Character.where(show_id: self.id)
  end
end
