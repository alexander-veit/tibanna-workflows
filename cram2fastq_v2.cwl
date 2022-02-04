#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: CommandLineTool

requirements:
  - class: InlineJavascriptRequirement

hints:
  - class: DockerRequirement
    dockerPull: aveit/cramtest:v2

baseCommand: [cram_to_fastq.sh]

inputs:
  - id: cram
    type: File
    inputBinding:
      position: 1
      prefix: -i
    doc: input cram file

outputs:
  - id: tmp_md5list
    type: File
    outputBinding:
      glob: tmp_md5list


doc: |
  run cram_to_fastq.sh -i cram 
