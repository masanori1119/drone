class PostMailer < ApplicationMailer

def post_email(name,email,text)
    @name = name
    @email = email
    @text = text
    mail to: "bestdroneschool@gmail.com", subject: "ベストドローンスクールに問い合わせがありました。"
end

def post_mail(nickname,rate,good,bad)
    @nickname = nickname
    @rate = rate
    @good = good
    @bad = bad
    mail to: "bestdroneschool@gmail.com", subject: "口コミ投稿がありました。"
end


end
