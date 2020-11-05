class AddColumnsToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :name, :string
    add_column :characters, :race, :string
    add_column :characters, :character_class, :string
    add_column :characters, :age, :integer
    add_column :characters, :height, :integer
    add_column :characters, :weight, :integer
    add_column :characters, :alignment, :string
    add_column :characters, :background, :string
    add_column :characters, :gender, :string
  end
end
