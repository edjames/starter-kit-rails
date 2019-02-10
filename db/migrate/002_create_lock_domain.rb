class CreateLockDomain < ActiveRecord::Migration[5.2]
  def up
    execute "create sequence lockid_seq;"
    execute "create domain lockid_t bigint default nextval('lockid_seq');"
  end

  def down
  end
end
