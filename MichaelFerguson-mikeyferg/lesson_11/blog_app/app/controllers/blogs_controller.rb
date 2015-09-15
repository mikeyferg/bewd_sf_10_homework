class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    render json: @blogs
  end

  def show
    @blog = find_blog

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def destroy
    @blog = find_blog
    @blog.destroy
    redirect_to root_path
  end
  private

  def blog_params
    params.require(:blog).permit(:title, :body, :user_id)
  end
  def find_blog
    Blog.find(params[:id])
  end
end
