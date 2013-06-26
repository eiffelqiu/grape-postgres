Sequel.migration do
  up do
    create_table(:posts) do
      primary_key :id
      String :usr, :unique => false, :null => false
      String :device, :unique => false, :null => false
      String :content, :unique => false, :null => false
      String :app, :unique => false, :null => false
      String :ip, :unique => false, :null => false        
      Time :created_at
      index [:usr, :device, :content, :app, :ip]
    end
  end
 
  down do
    drop_table(:posts, :cascade => true)
  end
end