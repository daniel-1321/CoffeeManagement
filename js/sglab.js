var sglabUrlBase = "http://localhost:8080/api/admin/";
var sglabUrl  = {
      admin : sglabUrlBase +"admin/",
      employee : sglabUrlBase +"employee/",
      customer : sglabUrlBase +"customer/",
      bill : sglabUrlBase +"bill/",
      shift : sglabUrlBase +"shift/",
      product : sglabUrlBase +"product/",
      news : sglabUrlBase +"news/",
      category : sglabUrlBase +"category/"
    };
 var userInfo = {
 }   


function showMsg(Msg, t=0) {
    if(Msg!="")
    {
    var c = document.getElementById("Msg");
    c.innerHTML=Msg;
    if(t!=0)
      setTimeout(function(){ c.innerHTML=""; }, t);
    }  
  }
  function showErr(Err, t=0) {
    if(Err !="")
    {
    var c = document.getElementById("Err");
    c.innerHTML=Err;
    if(t!=0)
      setTimeout(function(){ c.innerHTML=""; }, t);
    } 
  }

