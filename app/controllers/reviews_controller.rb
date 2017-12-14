class ReviewsController < ApplicationController

  def new
    @drone = School.find(params[:school_id])
    @review = Review.new
  end

  def create
    # Review.create(create_params)
    # トップページにリダイレクトする
    # redirect_to  controller: :schools, action: :show, id: params[:school_id]
@review = Review.new(create_params)
@drone = School.find(params[:school_id])

if @review.save
    # Review.create(create_params)
else
    render :new

end
    PostMailer.post_mail(create_params[:nickname],create_params[:rate],create_params[:email],create_params[:good],create_params[:bad]).deliver
end

  private
  def create_params
#form for で送られて来たデーターを書き込むには、requireの記述が必要。
#.permitは、new.html.erbのformアクションにて送信された（rate,review)を.merageでmooovi_idと繋ぐ。
 params[:review].permit(:nickname,:email, :rate, :sex, :Position, :good, :bad).merge(school_id: params[:school_id])
  end
end

