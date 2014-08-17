{div, script} = React.DOM

Timeline = React.createClass do
  getDefaultProps: -> do
    id: 'timeline-embed'
    source: null
    width: 800
    height: 600
  render: ->
    div {id:@props.id}, null
  componetDidMount: ->
    script {src:'http://cdn.knightlab.com/libs/timeline/latest/js/storyjs-embed.js'}, null
    document.head.append script
    createStoryJS do
      type: 'timeline'
      width: @props.width    
      height: @props.height
      source: @props.source
      embed_id: @props.id