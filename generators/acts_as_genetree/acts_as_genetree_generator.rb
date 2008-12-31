class ActsAsGenetreeGenerator < Rails::Generator::NamedBase

  def manifest
    record do |m|
      
      m.migration_template "create_tree_encodings.rb", "db/migrate", { :migration_file_name => "create_tree_encodings", :assigns => { :class_name => 'CreateTreeEncodings' } }
      
    end
  end

end
