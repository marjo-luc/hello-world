#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: papermill
hints:
  DockerRequirement:
    dockerPull: marjoluc/hello-world:stable
inputs:
  input_nb:
    type: File
    inputBinding:
      position: 1
  output_nb:
    type: string
    inputBinding:
      position: 2
  parameters:
    type: File
    inputBinding:
      position: 3
      prefix: -f  
outputs:
  output_nb_file:
    type: File
    outputBinding:
      glob: $(inputs.output_nb)
  product_file:
    type: File
    outputBinding:
      glob: temp.txt
  example_out:
    type: stdout
stdout: _stdout.txt
