class UsersController < ApplicationController
  include Pagy::Backend

  def index
    load_collection
  end

  def show
    load_resource
  end

  def new
    build_resource
  end

  def create
    build_resource
    save_resource or render :new, status: :unprocessable_entity
  end

  def edit
    load_resource
  end

  def update
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    load_resource
    build_resource
    save_resource or render :edit, status: :unprocessable_entity
  end

  def destroy
    load_resource
    destroy_resource
  end

  private

  def resource_scope
    User.all
  end

  def load_collection
    @pagy, @collection = pagy(resource_scope.ordered)
  end

  def load_resource
    @resource ||= resource_scope.find params[:id]
  end

  def build_resource
    @resource ||= resource_scope.build
    @resource.attributes = resource_params
  end

  def save_resource
    return unless @resource.save
    redirect_to @resource, notice: 'User successfully saved.'
  end

  def destroy_resource
    return unless @resource.destroy
    redirect_to users_path, notice: 'User successfully deleted.', status: 303
  end

  def resource_params
    return {} unless params[:user]
    params[:user].permit(:name, :email, :password, :password_confirmation)
  end

end
