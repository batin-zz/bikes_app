class CreateBikers < ActiveRecord::Migration
  def self.up
    create_table :bikers do |t|
      t.string :name
      t.integer :bike_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bikers
  end
end
