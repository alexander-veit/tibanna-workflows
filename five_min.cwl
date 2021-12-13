#!/usr/bin/env cwl-runner

cwlVersion: v1.0
baseCommand:
  - run.sh
inputs:
  - id: "#gzfile"
    type:
      - File
    inputBinding:
      position: 1
outputs:
  - id: "#report"
    type:
    - File
    outputBinding:
      glob: report
hints:
  - dockerPull: aveit/five_min_run:latest
    class: DockerRequirement
class: CommandLineTool