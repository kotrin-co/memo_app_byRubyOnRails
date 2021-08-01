class MemosController < ApplicationController
  def index
    # トップページが呼ばれた時のアクション
    @memos = Memo.all
  end

  def new
    # 新規作成ページ
  end

  def create
    # 新しいメモがポストされた時のアクション
    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
    redirect_to "/"
  end
end
