cwlVersion: v1.0
s:softwareVersion: 0.0.1

$graph:
  # Workflow entrypoint
  - class: Workflow
    id: create-stac
    label: Create a stac item including catalog file and tif file (blank file)
    doc: Creates a stac item including catalog file and tif file (blank file)
    inputs: []
    outputs:
    - id: outputs
      type: Directory
      outputSource:
        - do-create-file/results

    steps:
      do-create-stac:
        run: '#do-create-stac'
        in: []
        out:
          - results

  - class: CommandLineTool
    id: do-create-stac
    inputs: []
    outputs:
      results:
        type: Directory
        outputBinding:
          glob: .
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/create-stac:latest
        