// Generated by LiveScript 1.2.0
var div, Timeline;
div = React.DOM.div;
Timeline = React.createClass({
  getDefaultProps: function(){
    return {
      embed_id: 'timeline-embed',
      source: null,
      width: '100%',
      height: '600',
      lang: 'en',
      start_at_end: false,
      start_at_slide: false,
      start_zoom_adjust: 0,
      hash_bookmark: true,
      debug: false
    };
  },
  render: function(){
    return div({
      style: {
        width: this.props.width,
        height: this.props.height
      },
      id: this.props.embed_id
    }, null);
  },
  componentDidMount: function(){
    return createStoryJS(this.props);
  }
});