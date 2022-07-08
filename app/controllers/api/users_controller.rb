module Api::V1

class Api::V1::UsersController < ApiController
  def index
   # @users = User.all

   # render json: @users
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end 

def create
    @user = User.new(article_params)

    if @article.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
end

end
  
  private
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user)
    end
  

end
