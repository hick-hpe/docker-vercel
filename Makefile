git:
	@git config --global user.email "hpalermoemerick@gmail.com"
	@git config --global user.name "hpe-palermo"
	@echo "Autenticado!"

teste:
	@echo "Hello!!!"

install:
	@sudo apt-get update
	@sudo apt-get install -y ca-certificates curl gnupg

	# Adicionar a chave GPG do repositório oficial do Docker
	@sudo install -m 0755 -d /etc/apt/keyrings
	@curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
	@sudo chmod a+r /etc/apt/keyrings/docker.asc

	# Adicionar o repositório oficial do Docker
	@echo "deb [arch=$$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

	@sudo apt-get update

	# Instalar o Docker Engine
	@sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
