class Review < ActiveRecord::Base
  belongs_to :school
  validates :nickname, presence: { message: "＊名前を入力してください"}
validates :good,presence: { message: "＊学校の良いところを入力してください"}
validates :bad, presence: { message: "＊改善して欲しい・気になったところを入力してください"}
validates :good,     length: { minimum: 20, message:"＊学校の良いところは２０文字以上入力してください" }
validates :bad,     length: { minimum: 20, message:"＊学校の悪いところは２０文字以上入力してください" }
end
