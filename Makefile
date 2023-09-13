app-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

app-run:
	docker-compose run --rm app npm ci

npm-run:
	npm run dev

docker-run:
	docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev