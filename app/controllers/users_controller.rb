class UsersController < ApplicationController

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save 
      flash[:success] = "Create Successful!"
      redirect_to @user
    else
      flash[:faild] = "fail"
      render 'new'
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes(user_params)
      flash[:success] = "Successful! Profile updated."
      redirect_to @user
    else
      flash[:faild] = "Edit faild"
      render 'edit'
    end
  end

  def index
    @users = User.paginate page: params[:page]
    @users_csv = User.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @users_csv.to_csv }
    end
  end

  def destroy
    User.find (params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def import
    User.import params[:file]
    redirect_to users_url, notice: "Products imported."
  end

  private

    def user_params
      params.require(:user).permit(:name, :birthday, :email, :role, :password, :password_confirmation)
    end

end
