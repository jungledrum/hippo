//(function(){f='http://boami.sinaapp.com/share.php?url='+encodeURIComponent(window.location.href)+'
// &title='+encodeURIComponent(document.title);
// a=function(){if(!window.open(f,'readshare','location=1,links=0,scrollbars=0,toolbar=0,width=400,height=300'))location.href=f};if(/Firefox/.test(navigator.userAgent)){setTimeout(a,0)}else{a()}})()

url = encodeURIComponent(window.location.href)
title = encodeURIComponent(document.title)

alert(title)

javascript:function iprl5(){var d=document,z=d.createElement('scr'+'ipt'),b=d.body,l=d.location;try{if(!b)throw(0);d.title='(Saving...) '+d.title;z.setAttribute('src',l.protocol+'//www.instapaper.com/j/KpZbo9bg19UD?u='+encodeURIComponent(l.href)+'&t='+(new Date().getTime()));b.appendChild(z);}catch(e){alert('Please wait until the page has loaded.');}}iprl5();void(0)