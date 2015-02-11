module.exports = msg = 
  msgs:[
    [
      '说出一个历史事件，时间'
      '说出一个国家，国花'
      '说出一个体育项目，从事者'
    ]
    [
      '直接喝一杯'
      '和左边的人喝一杯'
      '加酱油喝一杯'
    ]
  ]
  getRandomMsg:->
    index=Math.floor(Math.random()*@msgs.length)
    console.log @msgs[index]
    index1=Math.floor(Math.random()*@msgs[index].length)
    {type:index,msg:@msgs[index][index1]}