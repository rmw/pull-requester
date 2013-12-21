class AccountsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :prepare_form_data

  def edit
    @user.api_keys.build{|ak| ak.build_service_id = 1}# if @user.api_keys.empty?
    @user.api_keys.build{|ak| ak.build_service_id = 2}
    #@user.api_keys.build
  end

  def update
    if current_user.update_attributes(params[:user])
      flash[:notice] = "Settings Updated"
    else
      flash[:notice] = "There was an error"
    end

    render :edit
  end

  private

  def prepare_form_data
    @user = current_user
    @build_services = BuildService.order('name').all
  end
end
