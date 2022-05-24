# rclone-action

GitHub Action wrapper for rclone.

## Usage

Create a workflow `.yml` file in your repositories `.github/workflows` directory. An [example workflow](#example-workflow) is available below. For more information, reference the GitHub Help Documentation for [creating a workflow file](https://help.github.com/en/articles/configuring-a-workflow#creating-a-workflow-file).

### Example workflow

```yaml
name: Release

on: push

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - uses: andreiio/rclone-action@v1
      with:
        args: copy dist s3:target
      env:
        RCLONE_CONFIG_S3_TYPE: s3
        RCLONE_CONFIG_S3_ACCESS_KEY_ID: ${{ secrets.ACCESS_KEY_ID }}
        RCLONE_CONFIG_S3_SECRET_ACCESS_KEY: ${{ secrets.SECRET_ACCESS_KEY }}
```

> See the [rclone documentation on environment variables](https://rclone.org/docs/#environment-variables) for info on remote access configuration and the [commands overview](https://rclone.org/commands/) for an index of all commands in rclone.

## License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
