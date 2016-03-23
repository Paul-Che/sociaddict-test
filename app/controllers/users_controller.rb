class UsersController < ApplicationController

  def edit
  end

  def update
    @user = current_user
    if User.find_by_email(params[:user][:parraine_par]).nil?
      if !params[:user][:new_filleul].nil?
        @user.new_filleul = params[:user][:new_filleul]
        if @user.filleuls.include?(@user.new_filleul)
          flash[:alert] = "Vous avez déjà #{@user.new_filleul} comme filleul"
        else
          @user.filleuls << @user.new_filleul
          @user.count += 1
          @user.save
          flash[:notice] = "Vous avez bien ajouté #{@user.new_filleul} à votre liste de filleul"
        end
      else
        flash[:alert] = "L'adresse email n'existe pas !"
      end
    elsif User.find_by_email(params[:user][:parraine_par]).filleuls.include?(@user.email)
      @user.parraine_par = params[:user][:parraine_par]
      @user.save
      flash[:notice] = "Bienvenue chez nous ! vous pouvez désormais parrainer quelqu'un !"
    else
      flash[:alert] = "Votre parrain ne vous a pas encore ajouté dans sa liste !"
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
    end


    redirect_to root_path
  end
end
