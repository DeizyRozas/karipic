class PhotosController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def show
        @photo = Photo.find(params[:id])
        @comment = Comment.new # Para crear un nuevo comentario
    end

    def create
        @photo = current_user.photos.build(photo_params)
        if @photo.save
            redirect_to root_path, notice: 'La foto se ha subido con éxito.'
        else
            render 'welcome/index'
        end
    end
        
    private
        
        def photo_params
            params.require(:photo).permit(:title, :description, :image)
        end
        
    
end
