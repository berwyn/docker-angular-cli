# docker-angular-cli
Docker images for [Angular CLI][ngcli] automated testing

## Usage
This container exposes the `/app` path to mount your Angular CLI application
into, and expects the contents of this directory to be an application that
Angular CLI knows how to handle.

## Examples
Building:
```bash
docker run -it --rm \
    -v .:/app \
    berwyn/angular-cli ng build
```

Running unit tests:
```bash
docker run -it --rm \
    -v .:/app \
    berwyn/angular-cli ng test
```

Running e2e tests:
__TBD__

[ngcli]: https://github.com/angular/angular-cli