#!/usr/bin/env cwl-runner

cwlVersion: v1.0
baseCommand: manta.sh
requirements:
  InlineJavascriptRequirement: {}
inputs:
  illumina_bam:
    type: File
    inputBinding:
      position: 1
    secondaryFiles:
      - .bai
  ref_fasta:
    type: File
    inputBinding:
      position: 2
    secondaryFiles:
      - .fai

outputs:
  result:
    type: File
    outputBinding:
      glob: result.zip
  variants:
    type: File
    outputBinding:
      glob: variants.vcf.gz
      
hints:
  - dockerPull: aveit/cgap-manta:latest
    class: DockerRequirement
class: CommandLineTool