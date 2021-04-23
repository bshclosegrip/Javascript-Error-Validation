/**
 * object_array.js
 */

var list=[];
function Data(mid, mname){
	this.mid = mid;
	this.mname = mname;
	
	this.setMid = function(mid){ this.mid = mid;}
	this.setMname = function(mname){ this.mname = mname; }
	this.getMid = function(){ return this.mid; }
	this.getMname = function(){ return this.mname; }
	this.toString = function(){
		var str = "<div class='item'> "
		        + "   <span class='mid'>" + this.mid + "</span>"
						+ "   <span class='mname'>" + this.mname + "</span>"
						+ "</div>";
		return str;
	}
}
var btnSave = document.getElementById('btnSave');
var btnDelete = document.getElementById('btnDelete');
var btnModify = document.getElementById('btnModify');
var btnFind = document.getElementById('btnFind');
var btnList = document.getElementById('btnList');
var frm = document.frm;

btnSave.onclick = function(){
	var o = new Data(frm.mid.value, frm.mname.value);
	list.push(o);
	console.log(o.toString());		
}

btnList.onclick = function(){
	var items = document.getElementsByClassName('items')[0];
	var str = '';
	for(var i=0 ; i<list.length ; i++){
		str += list[i].toString();
	}
	items.innerHTML = str;
}
