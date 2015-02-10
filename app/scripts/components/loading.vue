<style type="text/css">  
canvas{
    position:fixed;
    width:100%;
    margin-top:1.5rem;
}
#wrapper{
  position:fixed;
  width:100%;
  height:100%;
  background:black;
}

</style>  

<template>
    <div id="wrapper" style="margin-left: auto ;margin-right: auto ;">
 
    
    <canvas id="born_canvas">Missing the canvas </canvas>
    <div id="hidden_canvas" >
      <canvas id="born_canvas_hidden" width="100" height="100" style="display:none"></canvas>
    </div>
  
</template>
<script lang="coffee">
anim = require '../common/services/anim'
module.exports =
  inherit: true
  data: -> 
    demo: 'hello world'
    anim: anim
  ready: ->
    @anim.init()
    setTimeout(@toIndex, 26000);
  methods:
    toIndex:->
      @currentView="index"
</script>