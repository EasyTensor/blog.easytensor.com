serve:
	hugo server -t simple-blog -p 9080

build:
	docker build . -t gcr.io/easytensor-291022/easytensor/blog:lastest

push:
	docker push "gcr.io/easytensor-291022/easytensor/blog:lastest"