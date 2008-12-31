# Set character encoding to latin1
$KCODE = 'e'

# Ensure TreeEncodings model is in load_path
%w{ models }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'lib/app', dir)
  $LOAD_PATH << path
  ActiveSupport::Dependencies.load_paths << path
  ActiveSupport::Dependencies.load_once_paths.delete(path)
end

require 'genetree/acts_as_genetree'

# mixin the acts_as_genetree module
ActiveRecord::Base.send(:include, BinaryFigs::Acts::GeneTree)
