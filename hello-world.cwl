#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: marjoluc/hello-world:stable
arguments: ["/run.sh", "hello-world.ipynb", "output.ipynb"]
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
