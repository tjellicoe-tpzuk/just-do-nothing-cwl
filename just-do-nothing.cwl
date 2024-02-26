cwlVersion: v1.0
s:softwareVersion: 0.0.1

$graph:
  # Workflow entrypoint
  - class: Workflow
    id: do-nothing
    label: do absolutely nothing and complete execution
    doc: Does absolutely nothing and completes execution
    inputs: []
    outputs: []
    steps:
      do-nothing:
        run: '#do-nothing'
        in: []
        out: []

  - class: CommandLineTool
    baseCommand: ["echo"]
    id: do-nothing
    inputs: []
    outputs: []