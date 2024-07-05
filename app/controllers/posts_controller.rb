class PostsController < ApplicationController
  def index # 投稿一覧を表示するためのアクション
    @posts = Post.all # 全ての投稿を取得
  end

  def show # 個々の投稿を表示するためのアクション
    @post = Post.find(params[:id])
  end

  def new 
    @post = Post.new 
  end

  def create
    @post = Post.new(post_params) # formのtitleとbodyに対して入力された値を取得している
    if @post.save # saveの返り値をvalidationチェックに使用する
      redirect_to root_path # データが保存された後に自動でリダイレクトするようにする
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end 

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else 
      render :edit, status: :unprocessable_entity
    end 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
