class ColumnsController < ApplicationController

def index
@columns = Column.all.page(params[:page]).per(5)
@categori = Column.where(categori_1:"ドローン基礎知識").all.page(params[:page]).per(5)
@categori_2 = Column.where(categori_2:"ドローンスクールの基礎知識").all.page(params[:page]).per(5)
end

def categori_1

@categori = Column.where(categori_1:"ドローン基礎知識").all.page(params[:page]).per(5)
end

def categori_2

@categori_2 = Column.where(categori_2:"ドローンスクールの基礎知識").all.page(params[:page]).per(5)
end

def colum1
end

def colum2
end

def colum3
end

def colum4
end

def colum5
end

def colum6
end

def colum7
end

def colum8
end

def colum9
end

def colum10
end

def colum11
end

def colum12
end

def colum13
end

def colum14
end

def colum15
end




end