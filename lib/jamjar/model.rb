require "active_record"

module JamJar
  class Model < ActiveRecord::Base
    self.abstract_class = true
    establish_connection adapter: :sqlite3, database: ":memory:"

    def self.column(name, type)
      self.connection.add_column(self.table_name, name, type)
    end
  end
end