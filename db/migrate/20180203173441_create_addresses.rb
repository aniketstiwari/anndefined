class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string   "name"
	    t.string   "address"
	    t.string   "city"
	    t.string   "state"
	    t.string   "country"
	    t.string   "zip"
	    t.string   "phone"
	    t.integer  "user_id"
      t.timestamps
    end
  end
end
