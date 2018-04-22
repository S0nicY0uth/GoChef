class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all  
    if request.xhr?
      render status: 200, json: {
            user: @users
      }.to_json
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    if current_user.id == params[:id].to_i
      @user = User.find(params[:id])
    else
      redirect_to '/'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if params[:photos]
        photos = []
        params[:photos].each do |photo|
          @photo = Photo.create!(name: "photo", image: photo)
          photos << @photo
        end
        @user.update!(photos: photos)
      end
      render 'show'
    else
      p @user
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :bio, :location_lat, :location_lon, :avatar, :photos)
    end
  
end
