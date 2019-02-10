class EnvHelper

  def self.ensure_not_production!
    return if Rails.env.development?
    raise 'This task can only be run in development'
  end

end
