class Users < ActiveRecord::Migration[5.1]
  def change
  

    User.create :name => "Paul"
    User.create :name => "Caitlin"
    User.create :name => "Dan"
    User.create :name => "Ileana"

  end
end
