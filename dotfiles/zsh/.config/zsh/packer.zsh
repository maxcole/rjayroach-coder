# Packer image-build repo commands

export PACKER_CONFIG_DIR="$HOME/.local/share/packer"

pc() {
  cd ~/packer
  ./packer.yml "$@"
  packer_dir
}

pb() {
  packer_dir
  packer build -var-file=./_build.pkrvars.hcl .
}

pcb() {
  pc
  pb
}

pt() {
  cd ~/packer
  tree .builds
}

packer_parse() {
  ruby -e "puts 'parse the yaml playbook for the build'"
}

# Changes directory to packer_dir
# packer_dir() { ~/packer/.builds/base/proxmox-iso }
packer_dir() { ~/packer/.builds/base/debian-bookworm }
