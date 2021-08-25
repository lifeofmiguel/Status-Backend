class PostsController < ApplicationController

    def index 
        render json: Post.all.map {|post| PostSerializer.new(post)}
    end 

    def create 
        post = Post.new(post_params)

        if post.save 
            render json: PostSerializer.new(post)
        end

    end 

    def destroy 
        post = Post.find(params[:id])
        post.destroy
    end 

    private 

    def post_params
        params.require(:post).permit(:content) 
    end 
end
