# !/bin/sh
# start.sh

main() {
  docker-compose up -d

  # Start monitoring cos it just makes sense!
  ./bin/stack/monitor.sh
}

main
