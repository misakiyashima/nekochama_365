class AddNameStartDateToCat < ActiveRecord::Migration[7.2]
  def change
    add_column :cats, :name, :string
    add_column :cats, :birthday, :date
  end
end
