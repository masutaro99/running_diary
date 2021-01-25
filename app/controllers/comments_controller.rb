class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントを投稿しました"
      redirect_to comment.board
    else
      # Rails5.1以前はredirect_to :backだったが、rails5.2からredirect_backとなる、fallback_locationはHTTP_REFERERが設定されていない場合のリダイレクト先
      redirect_back fallback_location: root_path, flash: {
        comment: comment,
        error_messages: comment.errors.full_messages
      }
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment)
  end
end
