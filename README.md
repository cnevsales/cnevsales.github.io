# jekyll serve

```
$ docker build -t jekyll_env .
$ docker run -it -v $PWD:/mnt -p 4000:4000 jekyll_env \
    bash -c "cd /mnt && bundle exec jekyll serve --host 0.0.0.0"
```
