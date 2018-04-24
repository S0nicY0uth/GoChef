class PhotosController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        params[:photo][:photos].each do |photo|
            @user.photos.create!(image: photo)
        end
    end

    def destroy
        if Photo.delete(params[:id])
            flash[:notice] = "Image Deleted"
            return true
        else
            flash[:notice] = "Unable to delete"
        end
    end
end
