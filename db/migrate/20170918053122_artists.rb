class Artists < ActiveRecord::Migration[5.1]
  def change
    
    Artist.create :name => "Golde"
    Artist.create :name => "Paramore"
  end
end
