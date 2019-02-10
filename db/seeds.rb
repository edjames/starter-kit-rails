@messages = []

#
# Helper methods
# --------------

def notify(str)
  @messages << ' '
  @messages << "===> #{str}..."
end

def add_message(str)
  @messages << "  #{str}"
end

def create_user_seed(params)
  if User.where(email: params[:email]).exists?
    add_message "#{params[:name]} already exists."
  else
    pw = ENV.fetch('DEFAULT_USER_PASSWORD')
    User.create!(params.merge({ password: pw, password_confirmation: pw }))
    add_message "Created user #{params[:name]}. Password: #{pw}"
  end
end

# -------------------
# End: Helper methods
#

notify 'Creating User seeds'
[
  { name: ENV.fetch('DEFAULT_USER_NAME'), email: ENV.fetch('DEFAULT_USER_EMAIL') }
].each { |user| create_user_seed(user) }

puts; puts 'rake db:seed summary:'
@messages.each { |m| puts m }
puts
