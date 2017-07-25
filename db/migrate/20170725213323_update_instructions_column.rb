class UpdateInstructionsColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column(:recipes, :instructions, :instructions_text)
    add_column(:recipes, :instructions, :text, array: true, default: [])
    remove_column(:recipes, :instructions_text)
  end
end
