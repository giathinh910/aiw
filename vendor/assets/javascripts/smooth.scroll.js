var ssc_framerate=1500;var ssc_animtime=500;var ssc_stepsize=150;var ssc_pulseAlgorithm=true;var ssc_pulseScale=6;var ssc_pulseNormalize=1;var ssc_keyboardsupport=true;var ssc_arrowscroll=50;var ssc_frame=false;var ssc_direction={x:0,y:0};var ssc_initdone=true;var ssc_fixedback=true;var ssc_root=document.documentElement;var ssc_activeElement;var ssc_key={left:37,up:38,right:39,down:40,spacebar:32,pageup:33,pagedown:34,end:35,home:36};function ssc_init(){if(!document.body){return}var a=document.body;var b=document.documentElement;var e=window.innerHeight;var c=a.scrollHeight;ssc_root=(document.compatMode.indexOf("CSS")>=0)?b:a;ssc_activeElement=a;ssc_initdone=true;if(top!=self){ssc_frame=true}else{if(c>e&&(a.offsetHeight<=e||b.offsetHeight<=e)){ssc_root.style.height="auto";if(ssc_root.offsetHeight<=e){var d=document.createElement("div");d.style.clear="both";a.appendChild(d)}}}if(!ssc_fixedback){a.style.backgroundAttachment="scroll";b.style.backgroundAttachment="scroll"}if(ssc_keyboardsupport){ssc_addEvent("keydown",ssc_keydown)}}var ssc_que=[];var ssc_pending=false;function ssc_scrollArray(c,e,d,a){a||(a=1000);ssc_directionCheck(e,d);ssc_que.push({x:e,y:d,lastX:(e<0)?0.99:-0.99,lastY:(d<0)?0.99:-0.99,start:+new Date});if(ssc_pending){return}var b=function(){var g=+new Date;var p=0;var o=0;for(var j=0;j<ssc_que.length;j++){var r=ssc_que[j];var q=g-r.start;var h=(q>=ssc_animtime);var k=(h)?1:q/ssc_animtime;if(ssc_pulseAlgorithm){k=ssc_pulse(k)}var n=(r.x*k-r.lastX)>>0;var m=(r.y*k-r.lastY)>>0;p+=n;o+=m;r.lastX+=n;r.lastY+=m;if(h){ssc_que.splice(j,1);j--}}if(e){var f=c.scrollLeft;c.scrollLeft+=p;if(p&&c.scrollLeft===f){e=0}}if(d){var l=c.scrollTop;c.scrollTop+=o;if(o&&c.scrollTop===l){d=0}}if(!e&&!d){ssc_que=[]}if(ssc_que.length){setTimeout(b,a/ssc_framerate+1)}else{ssc_pending=false}};setTimeout(b,0);ssc_pending=true}function ssc_wheel(d){if(!ssc_initdone){init()}var e=d.target;var c=ssc_overflowingAncestor(e);if(!c||d.defaultPrevented||ssc_isNodeName(ssc_activeElement,"embed")||(ssc_isNodeName(e,"embed")&&/\.pdf/i.test(e.src))){return true}var b=d.wheelDeltaX||0;var a=d.wheelDeltaY||0;if(!b&&!a){a=d.wheelDelta||0}if(Math.abs(b)>1.2){b*=ssc_stepsize/120}if(Math.abs(a)>1.2){a*=ssc_stepsize/120}ssc_scrollArray(c,-b,-a);d.preventDefault()}function ssc_keydown(b){var g=b.target;var e=b.ctrlKey||b.altKey||b.metaKey;if(/input|textarea|embed/i.test(g.nodeName)||g.isContentEditable||b.defaultPrevented||e){return true}if(ssc_isNodeName(g,"button")&&b.keyCode===ssc_key.spacebar){return true}var c,i=0,h=0;var d=ssc_overflowingAncestor(ssc_activeElement);var f=d.clientHeight;if(d==document.body){f=window.innerHeight}switch(b.keyCode){case ssc_key.up:h=-ssc_arrowscroll;break;case ssc_key.down:h=ssc_arrowscroll;break;case ssc_key.spacebar:c=b.shiftKey?1:-1;h=-c*f*0.9;break;case ssc_key.pageup:h=-f*0.9;break;case ssc_key.pagedown:h=f*0.9;break;case ssc_key.home:h=-d.scrollTop;break;case ssc_key.end:var a=d.scrollHeight-d.scrollTop-f;h=(a>0)?a+10:0;break;case ssc_key.left:i=-ssc_arrowscroll;break;case ssc_key.right:i=ssc_arrowscroll;break;default:return true}ssc_scrollArray(d,i,h);b.preventDefault()}function ssc_mousedown(a){ssc_activeElement=a.target}var ssc_cache={};setInterval(function(){ssc_cache={}},10*1000);var ssc_uniqueID=(function(){var a=0;return function(b){return b.ssc_uniqueID||(b.ssc_uniqueID=a++)}})();function ssc_setCache(b,a){for(var c=b.length;c--;){ssc_cache[ssc_uniqueID(b[c])]=a}return a}function ssc_overflowingAncestor(d){var b=[];var a=ssc_root.scrollHeight;do{var c=ssc_cache[ssc_uniqueID(d)];if(c){return ssc_setCache(b,c)}b.push(d);if(a===d.scrollHeight){if(!ssc_frame||ssc_root.clientHeight+10<a){return ssc_setCache(b,document.body)}}else{if(d.clientHeight+10<d.scrollHeight){overflow=getComputedStyle(d,"").getPropertyValue("overflow");if(overflow==="scroll"||overflow==="auto"){return ssc_setCache(b,d)}}}}while(d=d.parentNode)}function ssc_addEvent(c,b,a){window.addEventListener(c,b,(a||false))}function ssc_removeEvent(c,b,a){window.removeEventListener(c,b,(a||false))}function ssc_isNodeName(b,a){return b.nodeName.toLowerCase()===a.toLowerCase()}function ssc_directionCheck(a,b){a=(a>0)?1:-1;b=(b>0)?1:-1;if(ssc_direction.x!==a||ssc_direction.y!==b){ssc_direction.x=a;ssc_direction.y=b;ssc_que=[]}}function ssc_pulse_(a){var c,d,b;a=a*ssc_pulseScale;if(a<1){c=a-(1-Math.exp(-a))}else{d=Math.exp(-1);a-=1;b=1-Math.exp(-a);c=d+(b*(1-d))}return c*ssc_pulseNormalize}function ssc_pulse(a){if(a>=1){return 1}if(a<=0){return 0}if(ssc_pulseNormalize==1){ssc_pulseNormalize/=ssc_pulse_(1)}return ssc_pulse_(a)}if($.browser.chrome||$.browser.opera){ssc_addEvent("mousedown",ssc_mousedown);ssc_addEvent("mousewheel",ssc_wheel);ssc_addEvent("load",ssc_init)};