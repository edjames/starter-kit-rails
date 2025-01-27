StarterKit::BOOT_TIME = Time.now.utc

file = File.join(Rails.root, 'VERSION')

StarterKit::VERSION = if File.exist?(file)
  File.read(file).strip!
else
  'development build'
end
