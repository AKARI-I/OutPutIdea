class PostsController < ApplicationController
  # 投稿一覧
  def index
    @posts = Post.all   # postsテーブルの全てのデータを配列で取得する
  end

  # 投稿詳細
  def detail
  end
end
