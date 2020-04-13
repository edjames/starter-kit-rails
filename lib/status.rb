require 'socket'

# Various server status helpers used by the admin dashboard
class Status
  ROOT_NS = Rails.application.class.to_s.deconstantize.constantize

  # Returns the time the instance was booted
  def boot_time
    ROOT_NS::BOOT_TIME
  end

  # Returns the server IP address
  def ip
    orig = Socket.do_not_reverse_lookup
    Socket.do_not_reverse_lookup = true

    UDPSocket.open do |s|
      s.connect '192.168.1.1', 1
      s.addr.last
    end
  ensure
    Socket.do_not_reverse_lookup = orig
  end

  # Returns the server hostname
  def hostname
    Socket.gethostname.strip
  end

  # Returns the application version
  def version
    ROOT_NS::VERSION
  end

  # Returns the application environment
  def env
    Rails.env
  end
end
