import os
f = open("metadata.yaml", "w")

f.write(f"""name: iris
versions: [iris/pachyderm:{os.environ["PACH_OUTPUT_COMMIT_ID"]}]
platform: sklearn
inputs:
- datatype: BYTES
  name: input
  shape: [ 1, 4 ]
outputs:
- datatype: BYTES
  name: output
  shape: [ 3 ]""")
f.close()