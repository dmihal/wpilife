function randomColor(brightness){
  function randomChanel(brightness){
    var r = 255-brightness;
    var n = 0|((Math.random() * r) + brightness);
    var s = n.toString(16);
    return (s.length==1) ? '0'+s : s;
  }
  return '#' + randomChanel(brightness) + randomChanel(brightness) + randomChanel(brightness);
}
