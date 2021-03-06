import Turbolinks from "turbolinks";
Turbolinks.start();

import Rails from "@rails/ujs";
Rails.start();

import 'channels';

// Utility function to require all files in a directory...
// function requireAll(r) {
//   r.keys().forEach(r);
// }

import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";
import StimulusReflex from 'stimulus_reflex';
import consumer from '../channels/consumer';
import controller from '../controllers/application_controller';

const application = Application.start();
const context = require.context("../controllers", true, /.js$/);
application.load(definitionsFromContext(context));
StimulusReflex.initialize(application, { consumer, controller, debug: false });

// Require everything in our channels directory
// requireAll(require.context("../channels/", true, /\.js$/));