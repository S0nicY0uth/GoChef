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
        name = params[:photos][0].original_filename
        params[:photos].each do |photo|
          @user.photos.create!(image: photo,name: name,image_file_name:name)
        end
      end
      redirect_to :action => "show", :id => @user.id
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
