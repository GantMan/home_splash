# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Placing the @ before the method name raises the scope so it can be accessed
# by anything in the given window.

@updateClock = ->
  currentTime = new Date
  currentHours = currentTime.getHours()
  currentMinutes = pad(currentTime.getMinutes())
  currentSeconds = pad(currentTime.getSeconds())

  # Choose either "AM" or "PM" as appropriate
  timeOfDay = if currentHours < 12 then 'AM' else 'PM'

  # Convert the hours component to 12-hour format if needed
  twelveHour = currentHours % 12

  # Convert an hours component of "0" to "12"
  twelveHour = if currentHours == 0 then 12 else currentHours

  # Compose the string for display
  currentTimeString = "#{currentHours}:#{currentMinutes}:#{currentSeconds} #{timeOfDay}"
  $('#clock').html currentTimeString

pad = (number) ->
  if number < 10
    '0' + number
  else
    number

$(document).ready ->
  setInterval 'updateClock()', 1000
