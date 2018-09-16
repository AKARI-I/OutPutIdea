class PostsController < ApplicationController
  # 投稿一覧
  def index
    @posts = Post.all   # postsテーブルの全てのデータを配列で取得する
  end

  # 投稿詳細
  def detail
    # 変数paramsにハッシュとして値が入っており、[:id]でその値の取得ができる
    @post = Post.find_by(id: params[:id])
  end

  # 新規投稿ページ
  def new
  end

  # 新規投稿保存
  def create
    # フォームから送信されたデータをparams変数から受け取り、保存する
    @post = Post.new(content:params[:content])  # (カラム名:params[:フォームのname属性])
    @post.save

    redirect_to("/posts/index")   # 投稿ボタンを押した時、投稿一覧画面にリダイレクトする
  end
end
