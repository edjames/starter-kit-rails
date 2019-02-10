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
    pw = 'Changeme1'
    User.create!(params.merge({ password: pw, password_confirmation: pw }))
    add_message "Created user #{params[:name]}. Password: #{pw}"
  end
end

# -------------------
# End: Helper methods
#

notify 'Creating User seeds'
[
  { name: 'Jim Beam', email: 'jim@example.com' },
  { name: 'Jack Daniels', email: 'jack@example.com' }
].each { |user| create_user_seed(user) }

puts; puts 'rake db:seed summary:'
@messages.each { |m| puts m }
puts
