class PostMailer < ApplicationMailer

def post_email(name,email,text)
    @name = name
    @email = email
    @text = text
    mail to: "bestdroneschool@gmail.com", subject: "ベストドローンスクールに問い合わせがありました。"
end

def post_mail(nickname,rate,sex,Position,good,bad)
    @nickname = nickname
    @rate = rate
    @sex = sex
    @position = Position
    @good = good
    @bad = bad
    mail to: "bestdroneschool@gmail.com", subject: "口コミ投稿がありました。"
end

end
