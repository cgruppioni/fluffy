class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id]) 
  end

  def update
    @user = User.find(params[:id]) 

    if @user.update(user_params)
      @user.update_attributes(
        credits: @user.credits + credit_params[:credits].to_i
      )
      redirect_to :dashboard
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email, 
      :password,
      :name, 
      :address, 
      :role, 
      :address, 
      :phone_number,
      :facility_type,
      :description,
      :primary_contact,
    )
  end

  def credit_params
    params.require(:user).permit(
      :credits
    )
  end
end

