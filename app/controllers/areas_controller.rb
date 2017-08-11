class AreasController < ApplicationController

  def show
    @drone = Area.find(params[:id])
    # findは一つづ取得
    @comments = @drone.schools.page(params[:page]).per(7)

    @comments1 = @drone.schools

    @schools = School.where(id: params[:id])
    # whereは複数まとめて取得

  end
end
