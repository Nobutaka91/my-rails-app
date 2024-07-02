class PostsController < ApplicationController
  def index # 投稿一覧を表示するためのアクション
    @posts = Post.all # 全ての投稿を取得
  end

  def show # 個々の投稿を表示するためのアクション
    @post = Post.find(params[:id])
  end
end
