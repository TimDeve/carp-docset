# Carp Docset for Dash/Zeal

This script pulls the latest Carp release and create a Docset that can be used with [Dash](https://kapeli.com/dash) or [Zeal](https://zealdocs.org).

## Dependencies

- dashing
- ffmpeg
- pandoc
- unzip
- curl
- jq

## Build

Running the script will create a `carp.docset` file in the current directory.

```sh
./create-docset
```

If you do not want to install the dependencies on your machine you can use docker to build an image with the dependencies and run the script.

```sh
make create-docset-docker
```

