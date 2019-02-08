class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :description
      t.string :social
      t.string :profile_Picture

      t.timestamps
    end
  end
end
