class AnotherChangeToListedDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :toys, :listed, from: false, to: true
  end
end
