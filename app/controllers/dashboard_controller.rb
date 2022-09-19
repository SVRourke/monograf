class DashboardController < ApplicationController
    def index
        @user = current_user
        @posts = current_user.blog_posts
        @tags = "NOT IMPLEMENTED"
    end
end
