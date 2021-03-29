class CreateUrlsShorters < ActiveRecord::Migration[6.1]
  def change
    create_table :urls_shorters do |t|
      t.string :url_long
      t.string :url_short
      t.timestamps
    end
  end
end
