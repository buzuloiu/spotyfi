class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :name, :string
    end

    User.create :name => "Paul"
    User.create :name => "Caitlin"
    User.create :name => "Dan"
    User.create :name => "Ileana"
    
  end
end
