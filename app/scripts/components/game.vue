<style>
  #container {
  position: relative;
  height: 3rem;
  width: 2.5rem;
  -webkit-perspective: 500;
  margin-top: 0.7rem;
  margin-right: auto;
  margin-left: auto;
  }
  #parent-keleyi-com {
    width: 2.5rem;
    height: 3rem;
    background-color: #666;
    opacity: 0.3;
    text-align: center;
  }
  /*执行Y轴旋转360度动画*/
  @-webkit-keyframes spin {
  from {-webkit-transform: rotateY(0);}
  to {-webkit-transform: rotateY(3600deg);}
  }
  .transform{
    -webkit-transform-style: preserve-3d;    
    -webkit-animation: spin 10s 1 ease-in-out;
  }

  button{
    margin-top:20px;
    margin-left:0.8rem;
  }
  .msg{
    padding-left: 10px;
    padding-top: 0.5rem;
    font-size: .5rem;
    color: #fff;
    padding-right: 10px;
  }
</style>
<template>
  <div id="container">
    <div id="parent-keleyi-com">
          <div class="msg">{{demo}}</div>
    </div>
  </div>
  <button class="punch" v-on="click:transform">gogogo</button>
</template>

<script lang="coffee">
Msg = require '../common/services/msg'
module.exports =
  data: -> 
    demo: ''
    running:false
    Msg:Msg
  methods:
    transform:->
      if @running
        return false
      @running=true
      @demo=""
      msg=@Msg.getRandomMsg()
      $("#parent-keleyi-com").addClass("transform")
      setTimeout(=>
        @demo=msg.msg
        $("#parent-keleyi-com").removeClass("transform")
        @running=false
      , 10000);
</script>