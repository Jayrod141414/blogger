class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title   #adds a column to the table called title of the type string
      t.text :body      #adds a column to the table called body of the type text

      t.timestamps
    end
  end
end
