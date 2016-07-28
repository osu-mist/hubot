# Description:
#   Frequently asked questions
#
# Commands:
#   hubot faq - List the frequently asked questions

module.exports = (robot) ->
  robot.respond /faq/i, (res) ->
    res.send "hubot ferpa - What is FERPA training?"
    res.send "hubot learning project - What are learning projects?"
    res.send "hubot oracle - How do I connect to my Oracle database?"
    res.send "hubot printers - How do I print?"
    res.send "hubot skeleton - What is the web api skeleton?"

  robot.respond /ferpa$/i, (res) ->
    res.send "FERPA is a federal law which regulates how student records may be shared. All OSU employees are required to go through FERPA training."

    res.send "http://oregonstate.edu/registrar/ferpa-training-module"

  robot.respond /learning projects?$/i, (res) ->
    res.send "Student devs build a learning project to get familiar with dropwizard."
    res.send "https://wiki.library.oregonstate.edu/confluence/display/CO/Learning+Projects"

  robot.respond /oracle$/i, (res) ->
    res.send "To connect to Oracle in SQL Developer:"
    res.send "Download tnsnames.ora from the Files sidebar of the Osu-mist channel. Open SQL Developer and go to Preferences > Database > Advanced and set Tnsnames directory to the directory containing tnsnames.ora."

    res.send "See also https://wiki.library.oregonstate.edu/confluence/display/MIST/Configuring+SQL+Developer+on+Ubuntu+14.X"

  robot.respond /printers?$/i, (res) ->
    res.send "To print, create a local printer with one of the following ports:"

    res.send "Xerox Phaser 3250 (black and white laser printer next to Eddy Beamer's cube): Xerox-Phaser-3250.tss.oregonstate.edu"
    res.send "Xerox Phaser 6700DN (color laser printer by the 2nd floor west staircase door): Xerox-Phaser6700-mcc206.tss.oregonstate.edu"

  robot.respond /skeleton$/i, (res) ->
    res.send "The Web API Skeleton is a dropwizard app which contains code common to all our APIs. All the APIs are forked from the skeleton to enable rapid development and ease maintenance."

    res.send "https://github.com/osu-mist/web-api-skeleton"
