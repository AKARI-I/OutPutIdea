class PostsController < ApplicationController
  def index
    @posts = [
      "hoge",
      "fuga",
      "akari",
      "sho",
      "hentai"
    ]
  end
end
