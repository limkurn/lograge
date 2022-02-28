# frozen_string_literal: true

module ActionCable
  module Server
    class Base
      mattr_accessor :logger, :remote_logger
      self.logger = Lograge::SilentLogger.new(config.logger)
      self.remote_logger = Lograge::SilentLogger.new(config.remote_logger)
    end
  end
end
