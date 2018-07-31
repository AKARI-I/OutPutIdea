=begin
URLに対し、「どのControllerのどのアクション」で処理をするかを決める
→URLが"home/top"の場合、homeコントローラのtopアクションを呼び出す
=end

Rails.application.routes.draw do
  get '/' => "home#top"         # トップページ
  get 'mypage' => "home#mypage" # 詳細ページ
  get 'posts/index'             # 投稿一覧ページ
end
