cwlVersion: v1.0
s:softwareVersion: 0.0.1

$graph:
  # Workflow entrypoint
  - class: Workflow
    id: main
    label: Create a catalog.json file and end
    doc: Creates a catalog.json file and ends
    inputs: []
    outputs:
    - id: outputs
      type: Directory
      outputSource:
        - do-create-file/results

    steps:
      do-create-file:
        run: '#do-create-file'
        in: []
        out:
          - results

  - class: CommandLineTool
    id: do-create-file
    inputs: []
    outputs:
      results:
        type: Directory
        outputBinding:
          glob: .
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/create-stac:latest
        