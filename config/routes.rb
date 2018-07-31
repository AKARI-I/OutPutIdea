=begin
URLに対し、「どのControllerのどのアクション」で処理をするかを決める
→URLが"home/top"の場合、homeコントローラのtopアクションを呼び出す
=end

Rails.application.routes.draw do
  get '/' => 'home#top'               # トップページ
  get 'mypage' => 'home#mypage'       # マイページ
  get 'posts/index' => 'posts#index'  # 投稿一覧ページ
  get 'posts/new' => 'posts#new'      # 新規投稿ページ

  # 投稿詳細ページ
  get 'posts/:id' => "posts#detail" #posts/indexに引っかかるため、indexより下に書く

end
