require "jamjar/model"
require "jamjar/version"

module JamJar
  @@table_count = 0

  def self.model
    model = Class.new(JamJar::Model)

    model.table_name = "table_#{@@table_count}"
    @@table_count += 1

    model.establish_connection adapter: "sqlite3", database: ":memory:"
    model.connection.create_table(model.table_name)
    model.class_eval(&Proc.new) if block_given?
    model
  end
end
