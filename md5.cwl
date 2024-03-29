---
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
  - dockerPull: aveit/md5:v3
    class: DockerRequirement
class: CommandLineTool
