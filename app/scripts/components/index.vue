<style>

</style>
<template>
<div class="index">
  <div class="milky">
  MYSTERY
  </div>
  <p></p>
</div>
<button type="button" class="punch" v-on="click:toGame">GO</button>
</template>
<script lang="coffee">
  module.exports =
    inherit: true
    data: -> 
      demo: 'hello world'
    methods:
      toGame:->
        @currentView="game"

</script>