class PostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]
    def index
        @posts = Post.all
        render json: @posts
    end

    def show
        render json: @posts
    end
    
    private
        def set_post
            @post = Post.fing(params[:id])
        end
end
 