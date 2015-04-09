

# ipymd / Atlas / Docker

You can also use [ipymd](https://github.com/rossant/ipymd) to write using Markdown.  This has the advantage of making the text more git-friendly for collaborators, and will allow you to generate a high-quality PDF using O'Reilly Atlas.  There is also a Docker image you can use that will simplify using the notebook in general.

## Building the Docker image:

```
docker build --no-cache -t sklearn_pycon2015 .
```

## Convert the existing ipynb formats to markdown

```
docker run -it \
   -v $(pwd):/usr/data \
   -w /usr/data \
   sklearn_pycon2015 \
   ipymd --from markdown --to atlas *.ipynb
```

## Running the notebook server

```
docker run -it \
   -p 8888:8888 \
   -v $(pwd):/usr/data \
   -w /usr/data \
   sklearn_pycon2015 \
   sh -c "ipython notebook --ip=0.0.0.0 --no-browser"
```

Once the server starts, open `192.168.59.103:8888`
