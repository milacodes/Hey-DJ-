class AdjustingSongCreated < ActiveRecord::Migration
  def change
  	change_column :songs, :created_at, :datetime, :null => true, :default => nil
  end
end
