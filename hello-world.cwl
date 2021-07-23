#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    #dockerPull: marjoluc/hello-world:stable
    dockerPull: hello-world_test 
arguments: ["/home/mlucas/run.sh", "/home/mlucas/hello-world.ipynb", "output.ipynb"]
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
