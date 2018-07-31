class PostsController < ApplicationController
  # 投稿一覧
  def index
    @posts = Post.all   # postsテーブルの全てのデータを配列で取得する
  end

  # 投稿詳細
  def detail
    # 変数paramsにハッシュとして値が入っており、[:id]でその値の取得ができる
    @id = params[:id]
  end
end
