## dockerの初回セットアップ
docker_setup:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew update
	brew install --cask docker
	docker --version
	brew install docker-compose
	docker-compose --version

## docker起動コマンド
docker_compose_up:
	cd backend/ && docker-compose up

## docker停止コマンド
docker_compose_down:
	cd backend/ && docker compose down

