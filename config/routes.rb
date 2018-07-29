=begin
URLに対し、「どのControllerのどのアクション」で処理をするかを決める
→URLが"home/top"の場合、homeコントローラのtopアクションを呼び出す
=end
Rails.application.routes.draw do
  get 'top' => "home#top"  # home/topにアクセス→homeコントローラのtopアクションを返す
end
