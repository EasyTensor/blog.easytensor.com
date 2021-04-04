serve:
	hugo serve -t simple-blog -p 8000

build:
	docker build . -t gcr.io/easytensor-291022/easytensor/blog:lastest

push:
	docker push "gcr.io/easytensor-291022/easytensor/blog:lastest"