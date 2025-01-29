class UpdateUsersJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    #
    UserDetail.update_all(profile: "profile from job")
  end
end
