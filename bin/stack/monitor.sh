# !/bin/sh
# monitor.sh

main() {
  watch "docker ps --all --filter name=skeleton --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}' | sort -n && echo && docker volume ls --filter name=skeleton "
}

main
