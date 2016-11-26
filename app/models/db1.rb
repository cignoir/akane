class DB1 < ApplicationRecord
  self.abstract_class = true

  class << self
    def detect_env
      case ENV['RAILS_ENV']
        when "development"
          :db1_development
        when "production"
          :db1_production
        when "test"
          :db1_test
        else
          :db1_development
      end
    end
  end

  establish_connection self.detect_env
end