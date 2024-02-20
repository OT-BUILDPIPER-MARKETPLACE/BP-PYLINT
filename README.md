# BP-PYLINT-STEP
A BP step to orchestrate pylint execution

## Setup
* Clone the code available at [BP-PYLINT-STEP](https://github.com/OT-BUILDPIPER-MARKETPLACE/BP-PYLINT)
* Build the docker image
```
git submodule init
git submodule update
docker build -t ot/pylint:0.1 .
```

### Docker Image

This BP step can be used independently and with BuildPiper as well
If you want to use it independently you have to take care of below things
    * You have to mount /var/run/docker.sock
    * You have to set WORKSPACE env variable
    * You have to set CODEBASE_DIR env variable

* Do local testing via image only

```
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/src -e WORKSPACE=/ -e CODEBASE_DIR=src ot/pylint:0.1
```

```
## Reference 
* [Docs](https://pylint.readthedocs.io/en/latest/)
* [Blog](https://pypi.org/project/pylint/)
