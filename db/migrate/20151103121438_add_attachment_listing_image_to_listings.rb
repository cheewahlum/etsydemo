class AddAttachmentListingImageToListings < ActiveRecord::Migration
  def self.up
#  def up
    change_table :listings do |t|
      t.attachment :listing
      t.attachment :image
#      add_attachment :listing
#      add_attachment :image
    end
  end

  def self.down
#  def down
    remove_attachment :listings, :listing
    remove_attachment :listings, :image
  end
end
