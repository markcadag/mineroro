# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
randomScalingFactor = ->
  Math.round Math.random() * 1000

lineChartData = 
  labels: [
    'January'
    'February'
    'March'
    'April'
    'May'
    'June'
    'July'
  ]
  datasets: [
    {
      label: 'My First dataset'
      fillColor: 'rgba(220,220,220,0.2)'
      strokeColor: 'rgba(220,220,220,1)'
      pointColor: 'rgba(220,220,220,1)'
      pointStrokeColor: '#fff'
      pointHighlightFill: '#fff'
      pointHighlightStroke: 'rgba(220,220,220,1)'
      data: [
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
      ]
    }
    {
      label: 'My Second dataset'
      fillColor: 'rgba(48, 164, 255, 0.2)'
      strokeColor: 'rgba(48, 164, 255, 1)'
      pointColor: 'rgba(48, 164, 255, 1)'
      pointStrokeColor: '#fff'
      pointHighlightFill: '#fff'
      pointHighlightStroke: 'rgba(48, 164, 255, 1)'
      data: [
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
        randomScalingFactor()
      ]
    }
  ]
