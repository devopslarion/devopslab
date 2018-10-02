# .env loading in the shell
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

# Run dotenv on login
dotenv

#ssh -i ~/.ssh/vunv docker@34.229.247.64 cd devopslab && git pull
ssh docker@${AWS_MASTER_NODE} cd devopslab && git pull
