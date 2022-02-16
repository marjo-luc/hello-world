#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [papermill, /home/jovyan/hello-world/hello-world.ipynb, output_nb.ipynb]
hints:
  DockerRequirement:
    dockerPull: marjoluc/hello-world:stable
requirements:
  ShellCommandRequirement: {}
inputs:
  input_1:
    type: string
    inputBinding:
      position: 1
      shellQuote: false
      prefix: --parameters
      valueFrom: |
        input_1 "$(self)"
outputs:
  output_nb_file:
    type: File
    outputBinding:
      glob: output_nb.ipynb
  product_file:
    type: File
    outputBinding:
      glob: temp.txt
  example_out:
    type: stdout
stdout: _stdout.txt
