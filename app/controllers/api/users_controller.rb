module Api::V1

class Api::V1::UsersController < ApiController
  def index
   # @users = User.all

   # render json: @users
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    respond to do |format|
      
      if user.save
      format.html {redirect_to users_url,
        notice: "User #{user.name} was succcessfully created"}
        
      format.json {render :show, :status, :created, location: @user}
        
        
      else
      
      format.html {render :new}
      format.json {render json: @user.errors, status: :unprocesable_entity}
        
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
end