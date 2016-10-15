class CreateValues < ActiveRecord::Migration[5.0]
  def change
    create_table :values do |t|
      t.boolean :light_status
      t.decimal :weather_temp
      t.boolean :status
    end
  end
end
