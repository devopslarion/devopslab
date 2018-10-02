# .env loading in the shell
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

# Run dotenv on login
dotenv

ssh -i ~/.ssh/vunv docker@${AWS_MASTER_NODE} sudo apk add git
