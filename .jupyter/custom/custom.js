require('notebook/js/cell').Cell.options_default.cm_config.lineNumbers = true;

define([
  'base/js/namespace',
  'base/js/promises'
], function (Jupyter, promises) {
  promises.app_initialized.then(function (appname) {
    if (appname === 'NotebookApp') {
    }
  });
});

