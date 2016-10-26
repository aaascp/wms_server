App.code = App.cable.subscriptions.create "CodeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#code_listener').val(data['message']);
    #alert(data['message'])

  speak: (code) ->
    @perform 'speak', message: code

 # $(document).on 'ready', '[data-behavior~=code_speaker]', (event) ->
 #  alert event.target.value
