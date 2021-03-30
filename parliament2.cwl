#!/usr/bin/env cwl-runner

cwlVersion: v1.0
baseCommand: parliament2_test.sh
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

outputs:
  report:
    type: File
    outputBinding:
      glob: report.txt
  breakseq_stdout:
    type: File
    outputBinding:
      glob: breakseq_stdout.txt
  breakseq_err:
    type: File
    outputBinding:
      glob: breakseq_err.txt
  breakdancer_err:
    type: File
    outputBinding:
      glob: breakdancer_err.txt
  cnvnator_stdout:
    type: File
    outputBinding:
      glob: cnvnator_stdout.txt
  cnvnator_err:
    type: File
    outputBinding:
      glob: cnvnator_err.txt
  sambamba_stdout:
    type: File
    outputBinding:
      glob: sambamba_stdout.txt
  sambamba_err:
    type: File
    outputBinding:
      glob: sambamba_err.txt
  delly_del_stdout:
    type: File
    outputBinding:
      glob: delly_del_stdout.txt
  delly_del_err:
    type: File
    outputBinding:
      glob: delly_del_err.txt
  delly_inv_stdout:
    type: File
    outputBinding:
      glob: delly_inv_stdout.txt
  delly_inv_err:
    type: File
    outputBinding:
      glob: delly_inv_err.txt
  delly_dup_stdout:
    type: File
    outputBinding:
      glob: delly_dup_stdout.txt
  delly_dup_err:
    type: File
    outputBinding:
      glob: delly_dup_err.txt
  delly_ins_stdout:
    type: File
    outputBinding:
      glob: delly_ins_stdout.txt
  delly_ins_err:
    type: File
    outputBinding:
      glob: delly_ins_err.txt
  lumpy_stdout:
    type: File
    outputBinding:
      glob: lumpy_stdout.txt
  lumpy_err:
    type: File
    outputBinding:
      glob: lumpy_err.txt
  manta_stdout:
    type: File
    outputBinding:
      glob: manta_stdout.txt
  manta_err:
    type: File
    outputBinding:
      glob: manta_err.txt
  result_lumpy:
    type: File
    outputBinding:
      glob: result_lumpy.vcf
  result_manta:
    type: File
    outputBinding:
      glob: result_manta.vcf
  result_manta_summary:
    type: File
    outputBinding:
      glob: result_manta_alignment_stats_summary.txt
  result_breakseq:
    type: File
    outputBinding:
      glob: result_breakseq.vcf
  result_breakdancer:
    type: File
    outputBinding:
      glob: result_breakdancer.vcf
  result_cnvnator:
    type: File
    outputBinding:
      glob: result_cnvnator.vcf
  result_cnvnator_output:
    type: File
    outputBinding:
      glob: result_cnvnator.output
  result_delly_deletion:
    type: File
    outputBinding:
      glob: result_delly_deletion.vcf
  result_delly_inversion:
    type: File
    outputBinding:
      glob: result_delly_inversion.vcf
  result_delly_duplication:
    type: File
    outputBinding:
      glob: result_delly_duplication.vcf
  result_delly_insertion:
    type: File
    outputBinding:
      glob: result_delly_insertion.vcf
  result_breakdancer_svtyped:
    type: File
    outputBinding:
      glob: result_breakdancer.svtyped.vcf
  result_breakseq_svtyped:
    type: File
    outputBinding:
      glob: result_breakseq.svtyped.vcf
  result_cnvnator_svtyped:
    type: File
    outputBinding:
      glob: result_cnvnator.svtyped.vcf
  result_delly_svtyped:
    type: File
    outputBinding:
      glob: result_delly.svtyped.vcf
  result_lumpy_svtyped:
    type: File
    outputBinding:
      glob: result_lumpy.svtyped.vcf
  result_manta_svtyped:
    type: File
    outputBinding:
      glob: result_manta.svtyped.vcf
  result_survivor:
    type: File
    outputBinding:
      glob: result_survivor_sorted.vcf
  result_survivor_combined_genotyped:
    type: File
    outputBinding:
      glob: result_survivor_combined_genotyped.vcf
  
hints:
  - dockerPull: aveit/parliament2
    class: DockerRequirement
class: CommandLineTool