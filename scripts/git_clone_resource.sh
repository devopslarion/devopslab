# .env loading in the shell
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

# Run dotenv on login
dotenv

#ssh -i ~/.ssh/vunv docker@34.229.247.64 git clone https://github.com/devopslarion/devopslab.git
ssh docker@${AWS_MASTER_NODE} git clone https://github.com/devopslarion/devopslab.git
