class RenamePercetageToPercentageInAllowancetypes < ActiveRecord::Migration[8.0]
  def change
    rename_column :allowancetypes, :percetage, :percentage
  end
end
