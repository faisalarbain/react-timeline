window.init = ->
  url = 'https://docs.google.com/spreadsheet/pub?key=0Agl_Dv6iEbDadHdKcHlHcTB5bzhvbF9iTWwyMmJHdkE&amp;output=html'
  React.renderComponent Timeline({width:'100%', source: url}), document.body
