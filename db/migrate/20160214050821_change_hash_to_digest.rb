class ChangeHashToDigest < ActiveRecord::Migration
  def change
    rename_column :accounts, :password_hash, :password_digest
  end
end
