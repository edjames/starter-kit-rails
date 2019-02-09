# !/bin/sh
# teardown.sh

main() {
  ./bin/stack/stop.sh

  docker rm -v skeleton-db  &> /dev/null
}

main
