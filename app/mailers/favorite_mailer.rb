class FavoriteMailer < ActionMailer::Base
  default from: "parker.franzi@gmail.com"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = "<comments/#{@comment.id}@parkerbloccit.com>"
    headers["In-Reply-To"] = "<post/#{@post.id}@parkerbloccit.com>"
    headers["References"] = "<post/#{@post.id}@parkerbloccit.com>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
