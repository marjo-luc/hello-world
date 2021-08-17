# hello-world

OGC-compliant application package containing a simple Jupyter Notebook that prints the input string. There are several ways to execute the notebook -- see below for examples.

The application descriptor is the ```hello-world.json``` file. This file contains the link to the workflow that will be executed and the docker image to build/execute within that workflow, among other things. The ```hello-world.cwl``` file is the workflow definition. This file defines the workflow steps and entrypoints to the docker containers.

For the CWL runner installation instructions and more information on CWL in general, see [here](https://www.commonwl.org/).
For more information regarding OGC, see [here](https://www.ogc.org/).

### Grab the code
```
git clone https://github.com/marjo-luc/hello-world.git
cd hello-world
```

### Execute main workflow using the CWL runner

```
cwl-runner --no-read-only main-workflow.cwl --input_nb hello-world.ipynb --output_nb output.ipynb --parameters inputs.json
```

### Execute subworkflow using the CWL runner
```
cwl-runner --no-read-only hello-world.cwl --input_nb hello-world.ipynb --output_nb output.ipynb --parameters inputs.json
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
