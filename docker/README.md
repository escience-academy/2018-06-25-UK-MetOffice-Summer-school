# Docker

## Miniconda image

### building
```bash
docker$ cd miniconda
docker/miniconda$ docker build -t ukms-miniconda .
```

### running
In one terminal

```bash
$ docker run -it -P ukms-miniconda
...
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
		http://0.0.0.0:8888/?token=(very-long-hex-key)
```

and in another

```bash
$ docker ps --format "{{.Image}}: {{.Ports}}"
ukms-miniconda: 0.0.0.0:12345->8888/tcp
```

From this we know that the URL of the running notebook is:
`http://localhost:12345/?token=(very-long-hex-key)`

TODO: find an easier way of setting this up.
