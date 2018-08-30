class CommentMailer < ApplicationMailer
  def self.mail_notify_comment(presenter)
    with(blog: presenter[:blog],
         entry: presenter[:entry],
         comment: presenter[:comment]).notify_create.deliver_later
  end

  def notify_create
    @blog = params[:blog]
    @entry = params[:entry]
    @comment = params[:comment]
    mail(subject: '新しいコメントが登録されました')
  end
end
