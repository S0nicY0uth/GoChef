class SkillsController < ApplicationController
    def new
        @user = User.find(params[:id])
        if @user.skills.create!(skills_params)
            redirect_to :action => "show", :id => @user.id
        else
            render 'edit'
        end
    end

    private
    def skills_params
      params.require(:skill).permit(:name)
    end
end
