class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id]) # this will get that single post
  end

  def new
    @post = Post.new
  end

  def create
    # render plain: params[:post].inspect # can see what this looks like after we submit the form, its a hash {with the values for title and body}
    @post = Post.new(post_params) # params[:post] means parameters of the post BUT we pass the private function instead.
    if @post.save
      redirect_to @post # this redirects to show view, doesnt exist yet but we can create now
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
