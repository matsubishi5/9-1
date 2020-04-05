class ThanksMailer < ApplicationMailer
    def send_confirm_to_user(user)
        @user = user
        mail(
            subject: "会員登録完了",
            to: @user.email
            )
      end
end
