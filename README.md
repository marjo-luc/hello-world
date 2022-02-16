# hello-world

This is an example of an OGC-compliant application package for a simple Jupyter Notebook that echos and writes a string to an output file. The notebook is parameterized using papermill.

### File descriptions

- ```hello-world.ipynb```
  - Notebook/algorithm. All this notebook does is echo and write a string to an output file.


- ```inputs.json```
  - Contains the input string to inject into the papermilled ```hello-world.ipynb``` notebook.


- ```hello-world.cwl```
  - Notebook CWL workflow.


- ```main-workflow.cwl```
  - Staged CWL workflow. This workflow is split into three stages: ```stage_in```, ```process```, and ```stage_out```. The ```stage_in``` step is meant to execute a workflow that prepares the environment before running the process i.e. localizing input datasets. The ```process``` step executes the notebook algorithm workflow. The ```stage_out``` step could be used to execute a workflow that publishes generated datasets, or performs cleanup activities.


- ```hello-world.json```
  - Application descriptor. This file defines the process parameters and how to execute the process, including which workflow to execute. The WPS will ingest this file to deploy a process.

For more information regarding OGC, see [here](https://www.ogc.org/).

## Install

Install the [CWL command line tool](https://github.com/common-workflow-language/cwltool).

```
git clone https://github.com/marjo-luc/hello-world.git
cd hello-world
```

## Execute


Execute subworkflow using the CWL runner
```
cwl-runner --no-read-only hello-world.cwl --input_nb hello-world.ipynb --output_nb output.ipynb --parameters inputs.json
```
<br />

Execute main workflow using the CWL runner
```
cwl-runner --no-read-only main-workflow.cwl --input_nb hello-world.ipynb --output_nb output.ipynb --parameters inputs.json
```
<br />

Execute notebook in batch mode using Docker
```
docker run marjo-luc/hello-world:stable ./run.sh hello-world.ipynb output.ipynb -Sinput_1 "Hello!"
```
<br />

Execute notebook in batch mode without using Docker
```
conda env create --file binder/environment.yml ./run.sh hello-world.ipynb output.ipynb -Sinput_1 "Hello!"
```
