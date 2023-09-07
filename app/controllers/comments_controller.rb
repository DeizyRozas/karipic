class CommentsController < ApplicationController
    def create
        @photo = Photo.find(params[:photo_id])
        @comment = @photo.comments.build(comment_params)
        @comment.user = current_user # Asigna el usuario actual al comentario
        
            if @comment.save
            # Redirige o actualiza la vista de la foto después de agregar el comentario
            redirect_to @photo, notice: 'Comentario creado correctamente.'
            else
            # Manejo de errores si la validación falla
            render root_path
            end
        end
        
        private
        
        def comment_params
            params.require(:comment).permit(:content)
        end
      
end
