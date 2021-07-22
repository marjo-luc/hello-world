#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
#baseCommand: bash
hints:
  DockerRequirement:
    #dockerPull: marjoluc/hello-world:stable
    dockerPull: hello-world_test 
arguments: ["bash", "./run.sh", "hello-world.ipynb", "output.ipynb"]
#arguments: ["hello-world.ipynb", "output.ipynb", "-p", "input_1"]
inputs:
  input_1:
    type: string
    inputBinding:
      position: 1
      prefix: -Sinput_1
outputs:
  example_out:
    type: stdout
stdout: stdout.txt
