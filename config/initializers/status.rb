StarterKit::BOOT_TIME = Time.now.utc

file = File.join(Rails.root, 'VERSION')

StarterKit::VERSION = if File.exists?(file)
  File.read(file).strip!
else
  'development build'
end
