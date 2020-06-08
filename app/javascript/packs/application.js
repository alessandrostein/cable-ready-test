import Turbolinks from "turbolinks";
Turbolinks.start();

import Rails from "@rails/ujs";
Rails.start();

// Utility function to require all files in a directory...
function requireAll(r) {
  // console.log(r.keys());
  r.keys().forEach(r);
}

import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

const application = Application.start();
const context = require.context("../controllers", true, /.js$/); // eslint-disable-line no-undef
application.load(definitionsFromContext(context));
