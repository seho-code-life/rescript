// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CamlinternalLazy = require("rescript/lib/js/camlinternalLazy.js");

var expensiveFilesRead = {
  LAZY_DONE: false,
  VAL: (function () {
      console.log("Reading dir");
    })
};

CamlinternalLazy.force(expensiveFilesRead);

exports.expensiveFilesRead = expensiveFilesRead;
/*  Not a pure module */
