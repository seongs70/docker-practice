# Docker 실전 연습 예제입니다.
### Installation
<pre>
cd /home
git clone https://github.com/seongs70/docker-practice
cd docker-practice
</pre>
### RUN
<pre>
# Login For private Docker Repository
docker login
docker pull user156/docker-practice
docker run -p 80:80 -v /home/docker-practice/Project:/var/www/html user156/docker-practice

</pre>
