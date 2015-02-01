require_relative '../../config/application'

class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table   :businesses, { id: false} do |t|
      t.primary_key  :id #, :null => false
      t.string    :name
      t.integer   :postal_code
      t.integer   :latitude

      t.timestamps
    end

    # add_index :businesses, :id, :unique => true
  end
end
