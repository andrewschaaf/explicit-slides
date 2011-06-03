
fs = require 'fs'
cs = require 'coffee-script'


if not module.parent
  src = fs.readFileSync('../examples/qml.coffee').toString('utf-8')
  nodes = cs.nodes src
  for node in nodes.expressions
    console.log node


