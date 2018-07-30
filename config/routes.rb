=begin
URLに対し、「どのControllerのどのアクション」で処理をするかを決める
→URLが"home/top"の場合、homeコントローラのtopアクションを呼び出す
=end

Rails.application.routes.draw do
  get 'posts/index'
  get '/' => "home#top"  # home/topにアクセス→homeコントローラのtopアクションを返す
  get 'detail' => "home#detail" # 詳細画面
end
