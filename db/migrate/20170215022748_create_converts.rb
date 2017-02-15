class CreateConverts < ActiveRecord::Migration[5.0]
  def change
    create_table :converts do |t|

      t.timestamps
    end
  end
end
