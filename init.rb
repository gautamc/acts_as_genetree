require 'acts_as_genetree'

ActiveRecord::Base.send(:include, BinaryFigs::Acts::GeneTree)
