all:
	ansible-galaxy install -f julienpalard.nginx_letsencrypt
	ansible-playbook playbook-mdk.yml -i inventory.yml
