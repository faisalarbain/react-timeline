{div} = React.DOM

Timeline = React.createClass do
  getDefaultProps: -> do
    embed_id: 'timeline-embed'
    source: null
    width: '100%'
    height: '600'
    lang: 'en'
    start_at_end: false
    start_at_slide: false
    start_zoom_adjust: 0
    hash_bookmark: true
    debug: false
  render: ->
    div {style:{width:@props.width, height:@props.height}, id:@props.embed_id}, null
  componentDidMount: ->
    createStoryJS @props