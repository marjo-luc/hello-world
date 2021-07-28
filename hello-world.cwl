#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand: papermill
hints:
  DockerRequirement:
    #dockerPull: marjoluc/hello-world:stable
    dockerPull: jupyter_test 
inputs:
  nb1_input_notebook:
    type: File
    inputBinding:
      position: 1
  nb1_output_notebook:
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
