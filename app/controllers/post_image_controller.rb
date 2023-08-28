class PostImageController < ApplicationController
  def index
    @post_images = PostImage.all
  end
  
  def destroy
    post_image = PostImage.find(params[:id])
    post_image.destroy
    redirect_to '/books'
  end
end
