require './base_object.rb'
require 'selenium-webdriver'

KEY_BUTTON = {xpath: '//div[contains(@class,"right")]/div[contains(text(),"Key")]'}
DATA_TYPE_BUTTON = {xpath: '//div[contains(@class,"map-layer-controls")]/div[contains(text(),"Data type")]'}
DATA_TYPE_CLOSE = {css: 'div.map-layer-controls > div.modal-style.map-layer-content > i.close-icon'}
PLATE_BOUNDARIES_CHECKBOX = {id: 'plate-border-box'}
VOLCANOES_CHECKBOX = {id: 'volcano-box'}
EARTHQUAKES_CHECKBOX = {id: 'earthquake-toggle'}
PLATE_MOVEMENT_CHECKBOX = {id: 'plate-arrow-toggle'}
SATELLITE_MAP_TYPE = {xpath: '//div[contains(@class,"settings")]/div[contains(text(),"Map type")]/select/option[contains(text(),"Satellite")]'}
STREET_MAP_TYPE = {xpath: '//div[contains(@class,"settings")]/div[contains(text(),"Map type")]/select/option[contains(text(),"Street")]'}
RELIEF_MAP_TYPE = {xpath: '//div[contains(@class,"settings")]/div[contains(text(),"Map type")]/select/option[contains(text(),"Relief")]'}
OCEAN_BASEMAP_MAP_TYPE = {xpath: '//div[contains(@class,"settings")]/div[contains(text(),"Map type")]/select/option[contains(text(),"Ocean basemap")]'}
ANIMATION_BUTTON = {css: '.fa-play'}
APP = {id:'app'}
CONTROLS = {css: '.map-layer-controls'}
LAB_SNAPSHOT_BUTTON = {css: '.lb-action-btn'}
CROSS_SECTION_BUTTON = {css: ".fa-paint-brush"}
OPEN_3D_BUTTON = {css: ".fa-cube"}
CANCEL_3D_BUTTON = {css: ".fa-close"}

se_url = 'https://seismic-explorer.concord.org/'

model = BaseObject.new()
model.setup_one(:chrome)
model.visit(se_url)
# model.verify_page('Seismic Explorer')

model.click_on(DATA_TYPE_BUTTON)
sleep(1)
model.click_on(PLATE_BOUNDARIES_CHECKBOX)
sleep(1)
model.click_on(VOLCANOES_CHECKBOX)
sleep(1)
model.click_on(PLATE_MOVEMENT_CHECKBOX)
sleep(1)
model.click_on(DATA_TYPE_CLOSE)
sleep(1)
model.click_on(ANIMATION_BUTTON)
sleep(15)
model.save_screenshot("#{Dir.home}/Downloads", 'SeismicExplorer')
sleep(1)
model.click_on(OCEAN_BASEMAP_MAP_TYPE)
sleep(1)
model.save_screenshot("#{Dir.home}/Downloads", 'SeismicExplorer')
model.click_on(RELIEF_MAP_TYPE)
sleep(1)
model.save_screenshot("#{Dir.home}/Downloads", 'SeismicExplorer')
model.click_on(STREET_MAP_TYPE)
sleep(1)
model.save_screenshot("#{Dir.home}/Downloads", 'SeismicExplorer')
model.click_on(SATELLITE_MAP_TYPE)
sleep(1)
model.save_screenshot("#{Dir.home}/Downloads", 'SeismicExplorer')

#need to add screenshot with key open
# click on CROSS_SECTION_BUTTON
#
#need to add screenshot of 3D open
