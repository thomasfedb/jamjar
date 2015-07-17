require "active_record"

module JamJar
  class Model < ActiveRecord::Base
    self.abstract_class = true

    def self.name
      "TestModel"
    end

    def self.column(name, type, options = {})
      self.connection.add_column(self.table_name, name, type, options)
    end
  end
end
