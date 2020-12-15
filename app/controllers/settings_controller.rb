class SettingsController < ApplicationController
  before_action :set_current_user
  def profile
  end

  def password
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Dados atualizado com sucesso.'
      bypass_sign_in(@user) if params['setting_action'] == 'password'
      redirect_to dashboard_index_path
    else
      flash[:error] = 'Erro ao atualizar suas informações.'
      render params['setting_action'].to_sym
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def set_current_user
    @user = current_user
  end
end
