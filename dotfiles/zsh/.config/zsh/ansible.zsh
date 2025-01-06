# custom aliases

# export ANSIBLE_ROLES_PATH="~/dev/lab/genesis/ansible/roles"
export ANSIBLE_VAULT_PASSWORD_FILE="./secrets.pwd"

alias ave="ansible-vault edit secrets.enc"
alias avv="ansible-vault view secrets.enc"

avc() {
  if [ ! -f secrets.pwd ]; then
    bip39 >> secrets.pwd
  fi
  if [ ! -f secrets.enc ]; then
    echo "\nsecrets.enc" >> .gitignore
    ansible-vault create secrets.enc
  else
    ansible-vault edit secrets.enc
  fi
}
