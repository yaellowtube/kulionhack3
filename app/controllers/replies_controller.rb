class RepliesController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @reply = @post.replies.create(reply_params)
    redirect_to album_path(@album)
  end
  
  def destroy
    @album = Album.find(params[:album_id])
    @reply = @post.replies.find(params[:id])
    @reply.destroy
    redirect_to album_path(@album) 
  end
  
  private
    def reply_params
     params.require(:reply).permit(:reply_user, :body)
    end
    
end
