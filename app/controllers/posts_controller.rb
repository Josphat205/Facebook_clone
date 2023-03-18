class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.save
            redirect_to user_posts_path(current_user), notice: "Post created successfully"
        else
            render 'new', notice: "Post not created"
        end
    end



    private

    def post_params
        params.require(:post).permit(:text, image: [])
    end
end
