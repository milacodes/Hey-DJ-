class AdjustingSongUpdated < ActiveRecord::Migration
  def change
  	change_column :songs, :updated_at, :datetime, :null => true, :default => nil
  end
end
