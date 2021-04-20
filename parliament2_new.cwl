#!/usr/bin/env cwl-runner

cwlVersion: v1.0
baseCommand: parliament2_tibanna.sh
requirements:
  InlineJavascriptRequirement: {}
inputs:
  illumina_bam:
    type: File
    inputBinding:
      position: 1
  illumina_bai:
    type: File
    inputBinding:
      position: 2
  ref_fasta:
    type: File
    inputBinding:
      position: 3
  ref_index:
    type: File
    inputBinding:
      position: 4
  filter_short_contigs:
    type: string
    inputBinding:
      position: 5
  run_breakdancer:
    type: string
    inputBinding:
      position: 6
  run_breakseq:
    type: string
    inputBinding:
      position: 7
  run_manta:
    type: string
    inputBinding:
      position: 8
  run_cnvnator:
    type: string
    inputBinding:
      position: 9
  run_lumpy:
    type: string
    inputBinding:
      position: 10
  run_delly_deletion:
    type: string
    inputBinding:
      position: 11
  run_delly_insertion:
    type: string
    inputBinding:
      position: 12
  run_delly_inversion:
    type: string
    inputBinding:
      position: 13
  run_delly_duplication:
    type: string
    inputBinding:
      position: 14
  run_genotype_candidates:
    type: string
    inputBinding:
      position: 15
  sample_name:
    type: string
    inputBinding:
      position: 16
  min_qual:
    type: string
    inputBinding:
      position: 17

outputs:
  result:
    type: File
    outputBinding:
      glob: result.zip
      
hints:
  - dockerPull: aveit/parliament2
    class: DockerRequirement
class: CommandLineTool