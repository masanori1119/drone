class SchoolsController < ApplicationController

  def index
    # 最新の口こみを表示
    @review = Review.where(public: 1).order(created_at: :desc).limit(3)







    # 学校のランキング（平均評価順）を表示
     public_review = Review.where(public: 1).includes(:school)
     product_ids = public_review.group(:school_id).order('average_rate DESC').limit(3).average(:rate).keys
     @ranking = product_ids.map{|id| School.find(id)}






     # 学校数をカウント
     @kensuu =School.all.count
     @hokkaido = School.where(prefecture: "北海道").count
     @touhoku = School.where(prefecture: ['青森県', '岩手県','宮城県','秋田県','山形県','福島県']).count
     @kanto = School.where(prefecture: ['茨城県', '栃木県','群馬県','埼玉県','千葉県','東京都','神奈川県']).count
     @chubu = School.where(prefecture: ['新潟県', '富山県','石川県','福井県','山梨県','長野県','岐阜県','静岡県','愛知県']).count
     @kinki = School.where(prefecture: ['三重県', '滋賀県','京都府','大阪府','兵庫県','奈良県','和歌山県']).count
     @chugoku = School.where(prefecture: ['鳥取県', '島根県','岡山県','広島県','山口県']).count
     @shikoku = School.where(prefecture: ['徳島県', '香川県','愛媛県','高知県']).count
     @kyusyu = School.where(prefecture: ['福岡県', '長崎県','佐賀県','大分県','熊本県','宮崎県','沖縄県']).count

# 講義の学校数をカウント
@sousa = School.where(license:"操縦").count
@kanri = School.where(license_2:"運行管理").count
@kuusatsu = School.where(license_3:"空撮").count
@sokuryou = School.where(license_4:"測量").count
@nougyou = School.where(license_5:"農業").count

end







def show
    @drone = School.find(params[:id])
    # findは一つづ取得

# コメント
@comments = @drone.reviews.where(public: 1).page(params[:page]).per(5)

# 学校の全体評価
@reviews = @drone.reviews.where(public: 1)




    # 地図表示
    @map = School.find(params[:id])
  end




def search
  # 検索機能
    @drone = School.where("(name LIKE(?)) and (prefecture LIKE(?))", "%#{params[:keyword]}%", "%#{params[:keyword1]}%").page(params[:page]).per(7)

     @drone1 = School.where("(name LIKE(?)) and (prefecture LIKE(?))", "%#{params[:keyword]}%", "%#{params[:keyword1]}%")

    @schools = School.where(id: params[:id])
  end

def ranking
  # 学校のランキング（平均評価順）を表示
  # product_ids = Review.group(:school_id).order('average_rate DESC').limit(5).average(:rate).keys
  # @ranking = product_ids.map{|id| School.find(id)}

   public_review = Review.where(public: 1).includes(:school)
     product_ids = public_review.group(:school_id).order('average_rate DESC').limit(7).average(:rate).keys
     @ranking = product_ids.map{|id| School.find(id)}


   # 学校のランキング（投稿数順）を表示
  # product_ids = Review.group(:school_id).order('count_school_id DESC').limit(5).count(:school_id).keys
  # @ranking2 = product_ids.map{|id| School.find(id)}

  public_review = Review.where(public: 1).includes(:school)
     product_ids = public_review.group(:school_id).order('count_school_id DESC').limit(7).count(:school_id).keys
     @ranking2 = product_ids.map{|id| School.find(id)}

  @drone = School.all
end

# 問い合わせ機能
def mail
end

def send_mail
      # deliverメソッドを使って、メールを送信する
PostMailer.post_email(params[:name],params[:email],params[:text]).deliver
end
# ここまで

def gaidorain
end

def gaido1
end

def gaido2
end

def gaido3
end

def gaido4
end

def hajimete
end

def license
@sousa = School.where(license:"操縦").page(params[:page]).per(5)

@sousa1 = School.where(license:"操縦")
end

def license_2
@kanri = School.where(license_2:"運行管理").page(params[:page]).per(5)

@kanri1 = School.where(license_2:"運行管理")

end

def license_3
@kuusatsu = School.where(license_3:"空撮").page(params[:page]).per(5)

@kuusatsu1 = School.where(license_3:"空撮")
end

def license_4
@sokuryou = School.where(license_4:"測量").page(params[:page]).per(5)

@sokuryou1 = School.where(license_4:"測量")
end

def license_5
@nougyou = School.where(license_5:"農業").page(params[:page]).per(5)

@nougyou1 = School.where(license_5:"農業")
end




def zenkoku

@drone = School.where(prefecture:"北海道")
@drone1 = School.where(prefecture: "青森県")
@drone2 = School.where(prefecture: "岩手県")
@drone3 = School.where(prefecture: "宮城県")
@drone4 = School.where(prefecture: "秋田県")
@drone5 = School.where(prefecture: "山形県")
@drone6 = School.where(prefecture: "福島県")
@drone7 = School.where(prefecture: "茨城県")
@drone8 = School.where(prefecture: "栃木県")
@drone9 = School.where(prefecture: "群馬県")
@drone10 = School.where(prefecture: "埼玉県")
@drone11 = School.where(prefecture: "千葉県")
@drone12 = School.where(prefecture: "東京都")
@drone13 = School.where(prefecture: "神奈川県")
@drone14 = School.where(prefecture: "新潟県")
@drone15 = School.where(prefecture: "富山県")
@drone16 = School.where(prefecture: "石川県")
@drone17 = School.where(prefecture: "福井県")
@drone18 = School.where(prefecture: "山梨県")
@drone19 = School.where(prefecture: "長野県")
@drone20 = School.where(prefecture: "岐阜県")
@drone21 = School.where(prefecture: "静岡県")
@drone22 = School.where(prefecture: "愛知県")
@drone23 = School.where(prefecture: "三重県")
@drone24 = School.where(prefecture: "滋賀県")
@drone25 = School.where(prefecture: "京都府")
@drone26 = School.where(prefecture: "大阪府")
@drone27 = School.where(prefecture: "兵庫県")
@drone28 = School.where(prefecture: "奈良県")
@drone29 = School.where(prefecture: "和歌山県")
@drone30 = School.where(prefecture: "鳥取県")
@drone31 = School.where(prefecture: "島根県")
@drone32 = School.where(prefecture: "岡山県")
@drone33 = School.where(prefecture: "広島県")
@drone34 = School.where(prefecture: "山口県")
@drone35 = School.where(prefecture: "徳島県")
@drone36 = School.where(prefecture: "香川県")
@drone37 = School.where(prefecture: "愛媛県")
@drone38 = School.where(prefecture: "高知県")
@drone39 = School.where(prefecture: "福岡県")
@drone40 = School.where(prefecture: "長崎県")
@drone41 = School.where(prefecture: "佐賀県")
@drone42 = School.where(prefecture: "大分県")
@drone43 = School.where(prefecture: "熊本県")
@drone44 = School.where(prefecture: "宮崎県")
@drone45 = School.where(prefecture: "鹿児島県")
@drone46 = School.where(prefecture: "沖縄県")
end

end

