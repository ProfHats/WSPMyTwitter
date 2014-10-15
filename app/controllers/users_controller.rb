class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
  end
  def new
   @user = User.new
  end
    #this is the old create method, here provided for contrast with the secure one
      #def create
        #@user = User.new(params[:user])
        #if @user.save
           # Handle a successful save.
        #else
           # Handle an unsuccessful save.
        #end
    #end	
	    def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
           # Handle a successful save.
		   flash[:success] = "Welcome to the Twitter App!"    # NEW LINE
		   redirect_to @user #NEW LINE
        else
            # Handle an unsuccessful save.     
			render 'new' #NEW LINE
        end
      end
	  
end
