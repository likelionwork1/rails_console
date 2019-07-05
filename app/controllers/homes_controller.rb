class HomesController < ApplicationController
  def index
  end

  def second
    one_post = Post.new
    one_post.title = params[:title]
    one_post.content = params[:content]
    one_post.numb = params[:numb]
    one_post.save
    
    redirect_to "/homes/index"
  end
  
  def read
    @posts = Post.all
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.numb = params[:numb]
    post.save
    
    redirect_to "/homes/read"
  end
  
  def delete
    # post = Post.find(params[:id])
    # post.destroy
    Post.destroy(params[:id])
    
    redirect_to "/homes/read"
  end
  
end





