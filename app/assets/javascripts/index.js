$(function(){
  $('a[name="delete_article"]').click(function(){
    var r = confirm("确定？");
    if (r == true) {
      $(this).parent().parent().remove()  
    }else{
      return false
    }    
  })
})