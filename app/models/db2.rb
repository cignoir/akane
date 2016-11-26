class DB2 < ApplicationRecord
  self.abstract_class = true

  class << self
    def detect_env
      case ENV['RAILS_ENV']
        when "development"
          :db2_development
        when "production"
          :db2_production
        when "test"
          :db2_test
        else
          :db2_development
      end
    end
  end

  establish_connection self.detect_env
end