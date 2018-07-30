class PostsController < ApplicationController
  def index
    @posts = Post.all   # postsテーブルの全てのデータを配列で取得する
  end
end
