# Flutter test action

This action allows you to test and build a Flutter app with a clean installation of Flutter.

## Inputs

### `channel`

**Required** The Flutter channel to use for testing and build. The default is `"stable"`.

## Outputs

### `ls`

Directory listing.

## Example usage

uses: actions/flutter-test-action@v1
with:
  channel: 'stable'
