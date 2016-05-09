# Docker Graphlab Create

This repo contains minimal **Dockerfile** and **Makefile** to build a docker image for a personal instance of Graphlab Create.

## Usage
Clone this repository and copy a personal copy of Graphlab Create to the directory. To get yourself a copy of Graphlab Create for personal or educational purposes, go [here](https://dato.com/products/create/)

With a zip of Grpahlab Create in hand, copy it to the root of this repository and you're all set.  Your repo should look like this:

``` bash
.
├── Dockerfile
├── GraphLab-Create-License.tar.gz
├── Makefile
├── README.md
└── notebook.sh
```

Run the following commands to build and run the image:
``` bash
# Build the image
make build
```

``` bash
# Run the container
make run
```

