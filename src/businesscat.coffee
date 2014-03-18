# Description:
#   Business cat is summoned when business jargon is used
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   business jargon - summons business cat
#
# Notes
#   See jargon array for list of trigger phrases
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images

images = require './images.json'

jargon = [
  'action items',
  'adult in the room',
  'all hands on deck',
  'at the end of the day',
  'best (of breed|practice)',
  'big(|ger) (picture|data)',
  'bleeding edge',
  'blue sky thinking',
  'blue ocean strategy',
  'boil the ocean',
  'bottom line',
  'brain dump',
  'burn rate',
  'burn platform',
  'buy(\\\s|-)in',
  'care and feeding',
  'change (agent|management)',
  'circle the wagons',
  'client(\\\s|-)facing',
  'come to jesus moment',
  'content marketing',
  'core competenc(y|ies)',
  'core values',
  'corporate values',
  'customer centric',
  'deliverable',
  'do more with less'
  '(double|drill) down',
  'drinking the kool(\\\s|-)aid'
  'ducks in a row',
  'elevator pitch',
  'emotional bandwidth',
  'eye on the ball',
  'fast track',
  'game plan',
  'gap analysis',
  'get on the same page',
  'giving 110',
  'going forward',
  'go the extra mile',
  'guru',
  'hammer(|ing) away',
  'hard stop',
  'hit the ground running',
  'hold the fort',
  'ideate',
  'it is what it is',
  'key takeaways',
  'learnings',
  'leverage',
  'lots of moving parts',
  'low hanging fruit',
  'make hay',
  'move (the goal posts|the needle)',
  'onboarding',
  'on (my|your) plate',
  'on (my|your) radar',
  'out of (pocket|the loop)',
  'out(side|\\\sof) the box',
  'over the wall',
  'paradigm',
  'peel the onion',
  '(\\\W|^)per se(\\\W|$)',
  '(\\\W|^)ping me(\\\W|$)',
  'point of contact',
  'price point',
  'proactive',
  'punch a puppy',
  'put this one to bed',
  'reach out',
  'results driven',
  'robust',
  'rock star',
  'rubber hits the road',
  'siwm lane',
  'share of wallet',
  'strategic .*?',
  'synerg(y|ize)',
  'take it (offline|to the next level)',
  'take ownership',
  'takeaway',
  'team (building|player)',
  'thought leadership',
  'tiger teams',
  'topicjacking',
  'total quality',
  'touch(|ing) (base|points)',
  'value (add|proposition)'
]

regex = new RegExp jargon.join('|'), 'gi'