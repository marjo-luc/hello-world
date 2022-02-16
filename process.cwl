#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: papermill
hints:
  DockerRequirement:
    dockerPull: pymonger/hello-world:stable
inputs:
  input_nb:
    type: File
    inputBinding:
      position: 1
  output_nb:
    type: string
    inputBinding:
      position: 2
      separate: true
      shellQuote: true
    streamable: false
  parameters:
    type: File
    inputBinding:
      position: 3
      prefix: -f  
outputs:
  example_out:
    type: stdout
stdout: _stdout.txt
