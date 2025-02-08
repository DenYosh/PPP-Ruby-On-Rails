class UpdateUsersJob < ApplicationJob
  queue_as :default

  def perform
    UserDetail.update_all(profile: "profile from job")
  end
end
