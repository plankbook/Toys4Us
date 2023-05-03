class ChangeListedDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :toys, :listed, from: nil, to: false
  end
end
