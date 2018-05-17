// module Pulp.Gitignore

"use strict";

const ignore = require('ignore');

exports.create = function create(ignore_list) {
    // we only allow mutation here,
    // to keep the purescript side immutable
    return ignore().add(ignore_list);
};

exports.ignores = function ignores(file_path) {
    return function(gi) {
        return gi.ignores(file_path);
    };
};

exports.filter = function filter(arr_file_path) {
    return function(gi) {
        return gi.filter(arr_file_path);
    };
};
