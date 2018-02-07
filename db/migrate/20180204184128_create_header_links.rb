class CreateHeaderLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :header_links do |t|
      t.string :title
      t.boolean :status

      t.timestamps
    end
  end
end
