class PhotosController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        params[:photo][:photos].each do |photo|
            @user.photos.create!(image: photo)
        end
    end

    def destroy
        binding.pry
        @photo = User.find(params[:id])
        @photo.delete(photo_destroy_params)
    end

    private
    def photo_destroy_params
        params.require(:photo).permit(:id)
    end
end
