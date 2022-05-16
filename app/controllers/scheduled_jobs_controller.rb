class ScheduledJobsController < ApplicationController
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
    ScheduledJob.all
  end

  def load_collection
    @pagy, @collection = pagy(resource_scope.order(:job_class))
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
    redirect_to @resource, notice: 'Scheduled job successfully saved.'
  end

  def destroy_resource
    return unless @resource.destroy
    redirect_to scheduled_jobs_path, notice: 'Scheduled job successfully deleted.', status: 303
  end

  def resource_params
    return {} unless params[:scheduled_job]
    params[:scheduled_job].permit(
      :job_class, :frequency_quantity, :frequency_period, :at
    )
  end

end
