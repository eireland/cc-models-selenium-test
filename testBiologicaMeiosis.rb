require './lara_object.rb'
require 'selenium-webdriver'

mom_end = {css: '#mother-meiosis > .meiosis > .controls > .buttons > .end'}
mother_cell = {css: '#mother-meiosis > div > div.cell > svg > circle:nth-child(3)'} #mother-meiosis > div > div.cell > svg > path:nth-child(70)
father_end = {css: '#father-meiosis > .meiosis > .controls > .buttons > .end'}
father_cell = {css: '#father-meiosis > div > div.cell > svg > circle:nth-child(6)'}#mother-meiosis > div > div.cell > svg > path:nth-child(28)
baby_end = {css: '#offspring-meiosis > div > div.controls > div.buttons > button.end'}

url = 'https://authoring.staging.concord.org/activities/762/pages/3684'
learn = LARAObject.new()
learn.setup_one(:chrome)
learn.visit(url)
learn.verify_page('ITSI Biologica model')

learn.switch_to_interactive
learn.click_on(mom_end)
sleep(3)
learn.click_on(father_end)
sleep(3)
learn.click_with_offset(mother_cell,40,10)
sleep(3)
learn.click_with_offset(father_cell,40,10)
sleep(3)
learn.click_on(baby_end)
sleep(5)
learn.switch_to_main

#mother-meiosis > div > div.cell > svg > circle:nth-child(3)