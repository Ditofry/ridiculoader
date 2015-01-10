# Change pluginName to your plugin's name.
window.ridiculoader = (options) ->
  settings =
    gif: 'mj'
    overlayColor: 'black'

  # Merge default settings with options.
  extend = (def, config) ->
    for own setting, value of config
      def[setting] = value

  init = () ->
    extend settings, options
    addSmokescreen("ridiculoader-smokescreen")

  addSmokescreen = (id) ->
    # Overlay
    modal = document.createElement("div")
    modal.setAttribute("id", id)
    # Gif
    loadingGif = document.createElement("img")
    loadingGif.setAttribute("src", "img/moonwalker.gif")
    # Style elements
    modal.style.position = 'fixed'
    modal.style.top = 0
    modal.style.left = 0
    modal.style.background = settings.overlayColor
    modal.style.zIndex = 5;
    modal.style.width = '100%'
    modal.style.height = '100%'

    loadingGif.style.position = 'absolute'
    loadingGif.style.top = 0
    loadingGif.style.bottom = 0
    loadingGif.style.left = 0
    loadingGif.style.right = 0
    loadingGif.style.margin = 'auto'
    loadingGif.style.zIndex = 10

    # Put gif inside modal, put modal inside body
    modal.appendChild(loadingGif)
    document.body.appendChild(modal)

  removeSmokescreen = (id) ->
    document.getElementById(id)

  init()
