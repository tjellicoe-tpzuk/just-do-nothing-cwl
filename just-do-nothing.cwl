cwlVersion: v1.0
s:softwareVersion: 0.0.1

$graph:
  # Workflow entrypoint
  - class: Workflow
    id: echo-test
    label: do absolutely nothing and complete execution
    doc: Does absolutely nothing and completes execution
    inputs: []
    outputs: []
    steps:
      do-echo:
        run: '#do-echo'
        in: []
        out: []

  - class: CommandLineTool
    #baseCommand: ["echo"]
    id: do-echo
    inputs: []
    outputs: []
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/echo:latest