class HomeController < ApplicationController
  # Yoshi Cooremans
  def index
    Rails.logger.debug("The debug level should be used for detailed messages that assist in debugging")
    Rails.logger.info("The Info Level, provide information regarding normal application processing")
    Rails.logger.warn("Warnings indicate something’s wrong. It might not be an error")
    Rails.logger.error("Information describing a major problem that has occurred.")
    Rails.logger.fatal("Fatal logs should only be used when something happens that causes the application to crash")
  end
end
