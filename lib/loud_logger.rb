class LoudLogger
  def self.log(message)
    Rails.logger.error '##################################################################'
    Rails.logger.error '##################################################################'
    Rails.logger.error '##################################################################'
    Rails.logger.error "LoudLogger:: #{message}"
    Rails.logger.error '##################################################################'
    Rails.logger.error '##################################################################'
    Rails.logger.error '##################################################################'
  end
end