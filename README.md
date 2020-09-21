# Flutter docker action

Questa azione consente di testare e compilare un'app Flutter disponendo di un'installazione pulita di Flutter.

## Inputs

### `channel`

**Required** Il canale di Flutter da usare per0 il test e la build. Default `"stable"`.

## Outputs

### `ls`

Il listing della directory.

## Example usage

uses: actions/flutter-action@v1
with:
  channel: 'stable'
