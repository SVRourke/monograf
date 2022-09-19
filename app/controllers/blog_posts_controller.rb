class BlogPostsController < ApplicationController
    def show
        @post = BlogPost.find(params[:id])
        redirect_to :dash_path if @post.nil?
        
        # @blog_post = BlogPost.find_by(params[])
    end

    def new
        @post = BlogPost.new
    end

    def create
    end 

    def edit
    end    

    def update
    end 

    def delete
    end    
end
