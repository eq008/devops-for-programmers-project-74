app-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
app-run:
	docker-compose run --rm app npm ci
npm-run:
	npm run dev
docker-local-run:
	docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev
docker-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
docker-build:
	docker-compose -f docker-compose.yml build app
docker-push:
	docker-compose -f docker-compose.yml push app
docker-run:
	docker run -p 8080:8080 roberto345/devops-for-programmers-project-74 npm run dev
