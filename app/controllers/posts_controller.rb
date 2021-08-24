class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    # render json: Post.all.map {|post| PostSerializer.new(post)}
    @posts = Post.all
    
    render json: @posts, except: [:created_at, :updated_at], include: {
      comments: {
        except: [:created_at, :updated_at]
      }
    }
  end

  # GET /posts/1
  def show
    render json: @post, except: [:created_at, :updated_at], include: {
      comments: {
        except: [:created_at, :updated_at]
      }
    }
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      # render json: PostSerializer.new(posts)
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :age, :mood, :status)
    end
end
