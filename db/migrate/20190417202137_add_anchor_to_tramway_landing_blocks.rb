class AddAnchorToTramwayLandingBlocks < ActiveRecord::Migration[5.1]
  def change
    add_column :tramway_landing_blocks, :anchor, :text
  end
end
