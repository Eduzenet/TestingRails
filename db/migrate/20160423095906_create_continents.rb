class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :contName
      t.string :contCode
      t.timestamps null: false
    end
  end
end
