class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :titel
      t.string :description
      t.string :portfolio_image

      t.timestamps
    end
  end
end
