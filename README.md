# hello-world

OGC-compliant application package containing a simple Jupyter Notebook that writes an input string to an output file.

For the CWL runner installation instructions and more information on CWL in general, see [here](https://www.commonwl.org/).
For more information regarding OGC, see [here](https://www.ogc.org/).

### Execute notebook using the CWL runner
```
cwl-runner --no-read-only --preserve-entire-environment hello-world.cwl inputs.json
```

### Execute notebook in batch mode using Docker
```
docker run marjoluc/hello-world:stable ./run.sh hello-world.ipynb output.ipynb -Sinput_1 "Hello Universe!"
```

### Execute notebook in batch mode without using Docker
```
conda env create --file binder/environment.yml
./run.sh hello-world.ipynb output.ipynb -Sinput_1 "Hello Universe!"
```
