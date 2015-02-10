# require broswerify shim modules
require 'zepto'


# app entry

Vue = require 'vue'


appView = new Vue
  el: document.body
  data:
    currentView: 'loading'
  components:
    'loading': require './components/loading'
    'index': require './components/index'
