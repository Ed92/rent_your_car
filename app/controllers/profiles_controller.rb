class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find_by user_id: current_user.id
    @attributes = Profile.attribute_names - %w(id user_id created_at updated_at)
  end

  def profile
    @user = current_user
  end
end
