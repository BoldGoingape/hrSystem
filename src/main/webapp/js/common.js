// JavaScript Document
//表格
var  highlightcolor='#d2eaff';
var  clickcolor='#51b2f6';
function  changeto(){
	source=event.srcElement;
	if  (source.tagName=="TR"||source.tagName=="TABLE")
	return;
	while(source.tagName!="TD")
	source=source.parentElement;
	source=source.parentElement;
	cs  =  source.children;
	//alert(cs.length);
	if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
	for(i=0;i<cs.length;i++){
		cs[i].style.backgroundColor=highlightcolor;
	}
}

function  changeback(){
	if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
	return
	if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
	//source.style.backgroundColor=originalcolor
	for(i=0;i<cs.length;i++){
		cs[i].style.backgroundColor="";
	}
}

function  clickto(){
	source=event.srcElement;
	if  (source.tagName=="TR"||source.tagName=="TABLE")
	return;
	while(source.tagName!="TD")
	source=source.parentElement;
	source=source.parentElement;
	cs  =  source.children;
	//alert(cs.length);
	if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
	for(i=0;i<cs.length;i++){
		cs[i].style.backgroundColor=clickcolor;
	}
	else
	for(i=0;i<cs.length;i++){
		cs[i].style.backgroundColor="";
	}
}
//菜单显示
function expand(el){
	if(null != document.getElementById("child" + el)){
		childObj = document.getElementById("child" + el);
		fuchildObj = document.getElementById("fuchild" + el);
		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
			fuchildObj.style.backgroundImage ='url(images/main_34.gif)';
		}
		else
		{
			childObj.style.display = 'none';
			fuchildObj.style.backgroundImage ='url(images/main_34_1.gif)';
		}
	}
	return false;
}
function sub(url){
	if(url!=null){
		this.location=url;
	}
}

//创建div
function showid(idname){
	var isIE = (document.all) ? true : false;
	var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == 6);
	var newbox=document.getElementById(idname);
	newbox.style.zIndex="9999";
	newbox.style.display="block"
	newbox.style.position = !isIE6 ? "fixed" : "absolute";
	newbox.style.top =newbox.style.left = "50%";
	newbox.style.marginTop = - newbox.offsetHeight / 2 + "px";
	newbox.style.marginLeft = - newbox.offsetWidth / 2 + "px";  
	var layer=document.createElement("div");
	layer.id="layer";
	layer.style.display="block"
	layer.style.width=layer.style.height="100%";
	layer.style.position= !isIE6 ? "fixed" : "absolute";
	layer.style.top=layer.style.left=0;
	layer.style.backgroundColor="#e8e8e8";
	layer.style.zIndex="9998";
	layer.style.opacity="0.6";
	document.body.appendChild(layer);
	var sel=document.getElementsByTagName("select");
	for(var i=0;i<sel.length;i++){        
		sel[i].style.visibility="hidden";
	}
	function layer_iestyle(){      
		layer.style.width=Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth)
		+ "px";
		layer.style.height= Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) +
		"px";
	}
	function newbox_iestyle(){      
		newbox.style.marginTop = document.documentElement.scrollTop - newbox.offsetHeight / 2 + "px";
		newbox.style.marginLeft = document.documentElement.scrollLeft - newbox.offsetWidth / 2 + "px";
	}
	if(isIE){layer.style.filter ="alpha(opacity=60)";}
	if(isIE6){  
		layer_iestyle()
		newbox_iestyle();
		window.attachEvent("onscroll",function(){newbox_iestyle();})
		window.attachEvent("onresize",layer_iestyle)          
	}  
	layer.onclick=function(){
		//newbox.style.display="none";
		//layer.style.display="none";
		//for(var i=0;i<sel.length;i++){
		//	sel[i].style.visibility="visible";
		//}
	}
}
function closeDiv(id){
	document.getElementById(id).style.display="none";
	document.getElementById("layer").style.display="none";
	document.getElementById("layer").removeNode(true);
}
function showaa(id){
	alert("提交事件");
	document.getElementById(id).style.display="none";
	document.getElementById("layer").style.display="none";
	document.getElementById("layer").removeNode(true);
}


/*function getElement(id) {
    return document.getElementById(id);
}
function createElement(type) {
    return document.createElement(type);
}
function removeElement(element) {
    try {
        if (element) {
            element.parentNode.removeChild(element);
        }
    }
    catch (e) {
    }
}
function hideElement(element) {
    if (element) {
        element.style.display = "none";
    }
}
function hideElementV(element) {
    if (element) {
        element.style.visibility = "hidden";
        element.style.display = "";
    }
}
function showElement(element) {
    if (element) {
        element.style.display = "";
        element.style.visibility = "";
    }
}
function clearElement(element) {
    for (var i in element) {
        try {

            element[i] = null;
        }
        catch (e) {
            continue;
        }
    }
}
function convertHTML(value) {
    if (!value) {
        return "";
    }
    return value.toString().split("<").join("<").split(">").join(">").split(" ").join(" ").split("&").join("&").split("<").join("<").split(">").join(">").split(" ").join(" ");
}
function GetOffsetPos(element) {
    var flag = element.tagName.toUpperCase() == "INPUT" ? true : false;
    var posTop = 0, posLeft = 0;
    do {
        posTop += element.offsetTop || 0;
        posLeft += element.offsetLeft || 0;
        element = element.offsetParent;
    } while (element);
    if (navigator.appVersion.indexOf("MSIE 6.0") != -1 && flag) {
        posLeft++;
    }
    return [posLeft, posTop];
}
function getWindowSize() {
    var myWidth = 0, myHeight = 0;
    if (typeof (window.innerWidth) == 'number') {
        //Non-IE
        myWidth = window.innerWidth;
        myHeight = window.innerHeight;
    } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
        //IE 6+ in 'standards compliant mode'
        myWidth = document.documentElement.clientWidth;
        myHeight = document.documentElement.clientHeight;
    } else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
        //IE 4 compatible
        myWidth = document.body.clientWidth;
        myHeight = document.body.clientHeight;
    }
    return ([myWidth, myHeight]);
}
function hideSelects(zIndexNow) {
    if (navigator.appVersion.indexOf("MSIE 6.0") != -1) {
        var selects = document.getElementsByTagName("select");
        var length = selects.length;
        for (var i = 0; i < length; i++) {
            if (selects[i].zIndexNow != zIndexNow && selects[i].style.visibility != "hidden") {
                selects[i].style.visibility = "hidden";
                selects[i].zIndexNow = zIndexNow;
            }
        }
    }
}
function showSelects(zIndexNow) {
    if (navigator.appVersion.indexOf("MSIE 6.0") != -1) {
        var selects = document.getElementsByTagName("select");
        var length = selects.length;
        for (var i = 0; i < length; i++) {
            if (selects[i].zIndexNow == zIndexNow) {
                selects[i].style.visibility = "";
                selects[i].zIndexNow = -1;
            }
        }
    }
}
var Mask = function () {
    this.zIndexNow = 100;
    this.maskDiv = null;
    this.indexArr = [];
    this.show = function () {
        this.zIndexNow += 10;
        if (this.indexArr.length == 0) {
            var maskHeight = document.documentElement.scrollHeight > getWindowSize()[1] ? document.documentElement.scrollHeight : getWindowSize()[1];
            this.maskDiv = createElement("div");
            this.maskDiv.onclick = function () {
                var event = arguments[0] || window.event;
                event.cancelBubble = true;
            };
            this.maskDiv.className = "mask";
            this.maskDiv.style.width = "100%";
            this.maskDiv.style.height = maskHeight + "px";
            document.body.appendChild(this.maskDiv);
        }
        this.maskDiv.style.zIndex = this.zIndexNow - 1;
        this.indexArr.push(this.zIndexNow - 1);
        hideSelects(this.zIndexNow);
    };
    this.clean = function () {
        showSelects(this.zIndexNow);
        this.indexArr.pop();
        if (this.indexArr.length > 0) {
            this.maskDiv.style.zIndex = this.indexArr[this.indexArr.length - 1];
            this.zIndexNow = this.indexArr[this.indexArr.length - 1] + 1;
        }
        else {
            document.body.removeChild(this.maskDiv);
            this.zIndexNow = 100;
        }
    };
};
var DragAble = function (dragable, handler) {
    this.iDiffX = 0;
    this.iDiffY = 0;
    this.oDragable = dragable;
    this.oHandler = handler;
    this.mouseDown = function () {
        document.body.onselectstart = function () { return false; };
        document.body.style.userSelect = "none";
        document.body.style.MozUserSelect = "none";
        var object = arguments.callee.object;
        var event = arguments[0] || window.event;
        object.iDiffX = event.clientX - object.oDragable.offsetLeft;
        object.iDiffY = event.clientY - object.oDragable.offsetTop;
        document.body.onmousemove = object.mouseMove;
        document.body.onmouseup = object.mouseUp;
        object.oHandler.style.cursor = "move";
    };
    this.mouseDown.object = this;
    this.oHandler.onmousedown = this.mouseDown;
    this.mouseMove = function () {
        var object = arguments.callee.object;
        var event = arguments[0] || window.event;
        var wWidth = getWindowSize()[0];
        if ((event.clientX - object.iDiffX) >= 0 && (event.clientX - object.iDiffX + object.oDragable.clientWidth) <= wWidth - 20) {
            object.oDragable.style.left = event.clientX - object.iDiffX + "px";
        }
        else {
            if ((event.clientX - object.iDiffX) < 0) {
                object.oDragable.style.left = 0 + "px";
            }
            else {
                object.oDragable.style.left = wWidth - object.oDragable.clientWidth - 20 + "px";
            }
        }
        //obj.style.left = tempLeft + "px";
        if ((event.clientY - object.iDiffY) >= 0) {
            object.oDragable.style.top = event.clientY - object.iDiffY + "px";
        }
        else {
            object.oDragable.style.top = 0 + "px";
        }
    };
    this.mouseMove.object = this;
    this.mouseUp = function () {
        var object = arguments.callee.object;
        document.body.onselectstart = "";
        document.body.style.userSelect = "";
        document.body.style.MozUserSelect = "";
        document.body.onmousemove = "";
        document.body.onmouseup = "";
        object.oHandler.style.cursor = "";
    };
    this.mouseUp.object = this;
};
var Popups = function (stringContainerId) {
    this.containerElement = getElement(stringContainerId);
    this.containerElement.onclick = function () {
        var event = arguments[0] || window.event;
        event.cancelBubble = true;
    };
    this.bindElement = function (stringTagName, stringClassName, objectContainerElement, objectContainer) {
        var element = createElement(stringTagName);
        element.className = stringClassName;
        if (objectContainerElement) {
            objectContainerElement.appendChild(element);
        }
        if (objectContainer) {
            element.container = objectContainer;
        }
        return element;
    };
    this.initializeElement = function (stringTitleIconClassName, stringIconClassName, booleanButtons, functionCallback) {
        var container = this.bindElement("div", "popup");
        container.bindElement = this.bindElement;
        var shadow = this.bindElement("div", "shadow", container, container);
        var main = this.bindElement("div", "main", container, container);
        var head = this.bindElement("div", "head", main, container);
        container.head = head;
        var titleIcon = this.bindElement("div", stringTitleIconClassName, head, container);
        container.titleIcon = titleIcon;
        var tail = this.bindElement("div", "tail", head, container);
        var closeIcon = this.bindElement("div", "closeIcon", tail, container);
        closeIcon.backgroundElement = tail;
        closeIcon.onmouseover = function () {
            this.backgroundElement.className = "tailH";
        };
        closeIcon.onmouseout = function () {
            this.backgroundElement.className = "tail";
        };
        closeIcon.onclick = function () {
            this.container.remove();
        };
        var body = this.bindElement("div", "body", main, container);
        container.body = body;
        var icon = this.bindElement("div", stringIconClassName, body, container);
        container.icon = icon;
        var element = this.bindElement("div", "element", body, container);
        var elementTable = createElement("table");
        elementTableTrTd = elementTable.insertRow(0).insertCell(0);
        elementTableTrTd.className = "elementEntity";
        element.appendChild(elementTable);
        container.element = elementTableTrTd;
        var buttons = this.bindElement("div", "buttons", body, container);
        container.buttons = buttons;
        var buttonOk = this.bindElement("input", "button");
        buttonOk.type = "button";
        buttonOk.value = "确定";
        buttonOk.container = container;
        buttonOk.onclick = function () {
            if (this.container.input) {
                if (this.container.input.value == "") {
                    popups.createPopup("AlertError", "输入不能为空！").show();
                    this.container.input.focus;
                }
                else {
                    functionCallback(this.container.input.value);
                    this.container.remove();
                }
            }
            else {
                functionCallback(this.container);
                this.container.remove();
            }
        };
        container.buttonOk = buttonOk;
        buttons.appendChild(buttonOk);
        if (booleanButtons) {
            var buttonCancel = this.bindElement("input", "button");
            buttonCancel.type = "button";
            buttonCancel.value = "取消";
            buttonCancel.container = container;
            buttonCancel.onclick = function () {
                this.container.remove();
            };
            container.buttonCancel = buttonCancel;
            buttons.appendChild(buttonCancel);
        }
        this.containerElement.appendChild(container);
        hideElement(container);
        container.show = function () {
            this.style.left = (getWindowSize()[0] - 489) / 2 + document.documentElement.scrollLeft + "px";
            this.style.top = (getWindowSize()[1] - 192) / 2 + document.documentElement.scrollTop + "px";
            mask.show();
            this.style.zIndex = mask.zIndexNow;
            showElement(this);
            var dragAble = new DragAble(this, this.head);
            if (this.input) {
                var setTimeoutFocus = function () {
                    arguments.callee.input.select();
                };
                setTimeoutFocus.input = this.input;
                setTimeout(setTimeoutFocus, 1);
            }
            else {
                this.buttonOk.focus();
            }
        };
        container.remove = function () {
            mask.clean();
            removeElement(this);
        };
        container.hide = function () {
            hideElement(this);
        };
        return container;
    };
    this.createPopup = function (stringType, stringNote, functionCallback) {
        switch (stringType) {
            case "AlertError":
                var popup = this.initializeElement("titleAlert", "iconWarning", false, new Function());
                popup.element.innerHTML = '<div class="title">' + stringNote + '</div>';
                return popup;
                break;
            case "1":
                var popup = this.initializeElement("titleAlert", "iconSuccess", false, new Function());
                popup.element.innerHTML = '<div class="title">' + stringNote + '</div>';
                return popup;
                break;
            case "Confirm":
                var popup = this.initializeElement("titleConfirm", "iconEditing", true, functionCallback);
                var line = createElement("div");
                line.innerHTML = '<div class="title">' + stringNote + '<br /><div>';
                popup.element.appendChild(line);
                return popup;
                break;
            case "Prompt":
                var combination = stringNote;
                functionCallback.combination = combination;
                var popup = this.initializeElement("titlePrompt", "iconEditing", true, functionCallback);
                var line = createElement("div");
                var arrayNote = stringNote;
                line.innerHTML = '<div class="title">请输入<label>' + convertHTML(combination) + '</label>:<div>';
                var input = createElement("input");
                input.type = "text";
                input.className = "input";
                popup.input = input;
                input.container = popup;
                input.onkeydown = function () {
                    var event = arguments[0] || window.event;
                    switch (event.keyCode) {
                        case 13: //Enter
                            this.container.buttonOk.click();
                            break;
                        case 27: //Escape
                            this.container.remove();
                            break;
                        default:
                            break;
                    }
                };
                line.appendChild(input);
                popup.element.appendChild(line);
                return popup;
                break;
        }
    };
};*/