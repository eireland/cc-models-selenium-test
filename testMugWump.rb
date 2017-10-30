require './base_object.rb'
require 'selenium-webdriver'

RESET_TO_DEFAULT_BUTTON = {id: "reset"}
TOGGLE_COMPARISON_MUG_BUTTON = {id: "toggle-compare"}
VISIBILITY-BUTTONS = {id: "visibility-buttons"}
SPREADSHEET= {css: ".geogebraweb-table-spreadsheet"

url = 'https://mugwumps.concord.org/'

interactive = BaseObject.new()
interactive.setup_one(:chrome)
interactive.visit(url)
interactive.verify_page('GeoGebra and Javascript')

