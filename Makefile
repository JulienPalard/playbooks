all:
	ansible-galaxy install -f julienpalard.nginx_letsencrypt
	ansible-playbook playbook-julien-palard.yml -i inventory.yml
