#!/bin/bash
POSITIONAL=()
#command="papermill /home/mlucas/hello-world.ipynb output.ipynb"
command="papermill ${HOME}/hello-world.ipynb output.ipynb"
while [[ $# -gt 0 ]]; do
  key="$1"
  echo $key
  case $key in
    -Sinput_1|--Sinput_1)
      command="${command} -p input_1 $2"
      shift
      shift
      ;;
    *) 
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done
echo "Built papermill command:"
echo $command
${command}
