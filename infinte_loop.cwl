#!/usr/bin/env cwl-runner

cwlVersion: v1.0
baseCommand:
  - run.sh
inputs: []
outputs: []
hints:
  - dockerPull: aveit/infinite-loop:v1
    class: DockerRequirement
class: CommandLineTool