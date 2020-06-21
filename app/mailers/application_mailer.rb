class ApplicationMailer < ActionMailer::Base
  def received_email(user)
    @user = user
    mail to: @user.email,
         subject: "【#{@user.name}様からお知らせがあります】"
  end
end
