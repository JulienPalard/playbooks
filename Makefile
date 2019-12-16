.PHONY: ansible-playbook
ansible-playbook: deps
	if [ -n "$TAG" ]; then \
	    ansible-playbook playbook-julien-palard.yml -i inventory.yml -t $(TAG); \
	else \
	    ansible-playbook playbook-julien-palard.yml -i inventory.yml; \
	fi

.PHONY: weechat
weechat: TAG = weechat
weechat: ansible-playbook

.PHONY: web
web: TAG = web
web: ansible-playbook

.PHONY: pasteque
pasteque: TAG = pasteque
pasteque: ansible-playbook

.PHONY: deps
deps:
	ansible-galaxy install -f julienpalard.nginx_letsencrypt
