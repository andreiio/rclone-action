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

    - name: Release
      uses: andreiio/rclone-release@v1
      with:
        bucket: "s3:release"
        publish_dir: ./public
        release_name: project-name
      env:
        RCLONE_CONFIG_S3_TYPE: s3
        RCLONE_CONFIG_S3_ACCESS_KEY_ID: ${{ secrets.ACCESS_KEY_ID }}
        RCLONE_CONFIG_S3_SECRET_ACCESS_KEY: ${{ secrets.SECRET_ACCESS_KEY }}
```

> See the [rclone documentation on environment variables](https://rclone.org/docs/#environment-variables) for info on remote access configuration.

## License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
