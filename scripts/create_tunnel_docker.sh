# .env loading in the shell
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

# Run dotenv on login
dotenv

ssh -i ~/.ssh/vunv -NL localhost:2374:/var/run/docker.sock docker@${AWS_MASTER_NODE}
