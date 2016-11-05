class BlogController < ApplicationController
  
  layout "Blog_Layout"
  
  def list
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to :action=>"list"
  else
    render :action=>"new"  
  end
  end
  
  def post_params
    params.require(:posts).permit(:title,:content)
  end  
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if@post.update_attributes(postu_params)
      redirect_to :action=>"list",:id=>@poat
    else
      render :action=>"edit"
    end
    end
  
  def postu_params
    params.require(:post).permit(:title,:content)
  end

  def delete
    @post = Post.find(params[:id]).destroy
      redirect_to :action=>"list"
  end
  
end