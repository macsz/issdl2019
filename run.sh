#!/bin/bash

docker run -p 8000:8000 -p 9000:9000 -v $(pwd):/issdl/ -ti issdl/core:2019 bash
