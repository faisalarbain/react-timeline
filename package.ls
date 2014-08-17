#!/usr/bin/env lsc -cj
author:
  name: ['Chen Hsin-Yi']
  email: 'ossug.hychen@gmail.com'
name: 'react-timeline'
description: 'timelinejs as react component'
version: '0.1.1'
main: \lib/index.js
repository:
  type: 'git'
  url: 'git://github.com/kuansim/react-timeline'
scripts:
  prepublish: """
    lsc -cj package.ls &&
    lsc -bc -o lib src
  """
  # this is probably installing from git directly, no lib.  assuming dev
  postinstall: """
    if [ ! -e ./lib ]; then npm i LiveScript; lsc -bc -o lib src; fi
  """
engines: {node: '*'}
dependencies:
  react: 'git://github.com/facebook/react.git'
devDependencies:
  LiveScript: \1.2.x
