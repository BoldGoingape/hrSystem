<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/edit.css" type="text/css" />
    <title>新建展示页面</title>
</head>
<script language="javascript">
    function getElement(id) {
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
        if( typeof( window.innerWidth ) == 'number' ) {
            //Non-IE
            myWidth = window.innerWidth;
            myHeight = window.innerHeight;
        } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
            //IE 6+ in 'standards compliant mode'
            myWidth = document.documentElement.clientWidth;
            myHeight = document.documentElement.clientHeight;
        } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
            //IE 4 compatible
            myWidth = document.body.clientWidth;
            myHeight = document.body.clientHeight;
        }
        return([myWidth,myHeight]);
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
            if (this.indexArr.length == 0){
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
            if (this.indexArr.length > 0){
                this.maskDiv.style.zIndex = this.indexArr[this.indexArr.length - 1];
                this.zIndexNow = this.indexArr[this.indexArr.length - 1] + 1;
            }
            else {
                document.body.removeChild(this.maskDiv);
                this.zIndexNow = 100;
            }
        };
    };
    var DragAble = function (dragable,handler) {
        this.iDiffX = 0;
        this.iDiffY = 0;
        this.oDragable = dragable;
        this.oHandler = handler;
        this.mouseDown = function(){
            document.body.onselectstart = function () {return false;};
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
        this.mouseMove = function() {
            var object = arguments.callee.object;
            var event = arguments[0] || window.event;
            var wWidth = getWindowSize()[0];
            if ((event.clientX - object.iDiffX) >= 0 && (event.clientX - object.iDiffX + object.oDragable.clientWidth) <= wWidth - 20){
                object.oDragable.style.left = event.clientX - object.iDiffX + "px";
            }
            else {
                if ((event.clientX - object.iDiffX) < 0){
                    object.oDragable.style.left = 0 + "px";
                }
                else {
                    object.oDragable.style.left = wWidth - object.oDragable.clientWidth - 20 + "px";
                }
            }
            //obj.style.left = tempLeft + "px";
            if ((event.clientY - object.iDiffY) >= 0){
                object.oDragable.style.top = event.clientY - object.iDiffY + "px";
            }
            else {
                object.oDragable.style.top = 0 + "px";
            }
        };
        this.mouseMove.object = this;
        this.mouseUp = function() {
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
        this.containerElement =getElement(stringContainerId);
        this.containerElement.onclick = function (){
            var event = arguments[0] || window.event;
            event.cancelBubble = true;
        };
        this.bindElement = function (stringTagName, stringClassName, objectContainerElement, objectContainer) {
            var element = createElement(stringTagName);
            element.className = stringClassName;
            if (objectContainerElement) {
                objectContainerElement.appendChild(element);
            }
            if (objectContainer){
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
            container.body=body;
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
    };
</script>
<body>
<!--上-->
<div class="editTopbg">
    <div class="editTop1"></div>
    <div class="editTop2">
        <div class="editTopTitleDiv"><div></div><span class="STYLE4">新增页面</span></div>
    </div>
    <div class="editTop3"></div>
    <div class="editTopBtnDiv">
        <div style="float:right;" class="editTopBtnDiv1">
            <div><input type="checkbox" name="checkbox62" value="checkbox" /><span>全选</span></div>
            <div><img src="images/001.gif" width="14" height="14" /><span>新增</span></div>
            <div><img src="images/114.gif" width="14" height="14" /><span>修改</span></div>
            <div><img src="images/083.gif" width="14" height="14" /><span>删除</span></div>
        </div>
    </div>
</div>

<!--中-->
<div class="editCenterbg">
    <table>
        <tr>
            <td class="tabLeft"></td>
            <td class="tabCenter">
                <table class="input_table">
                    <TBODY style="DISPLAY: block">
                    <tr valign="top" class="input_table_ge">
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <input type="radio" name="z1" value="1" id="z1_1" checked>测试数据1
                            <input type="radio" name="z1" value="2" id="z1_2">测试数据2
                            <input type="radio" name="z1" value="3" id="z1_3">测试数据3
                            <input type="radio" name="z1" value="4" id="z1_4">测试数据4
                        </td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <input class="input_text" style="width:350px;" type="text"/><span class="font7 m-left">（2-30个字）</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <input class="input_text" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <input class="input_text" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <input class="input_text" type="text"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                        <td class="input_td_right">
                            <textarea class="input_textarea" name="" cols="" rows="10"></textarea><br/>
                            <span class="font7">
                                    1、测试数据测试数据测试数据测试数据测试数据；<br/>
                                    2、测试数据测试数据测试数据测试数据；
                                </span>
                        </td>
                    </tr>

                    <tr>
                        <td class="input_td_left">测试数据</td>
                        <td valign="middle" class="input_td_right">测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据</span>
                        </td>
                    </tr>
                    <tr valign="top" class="input_table_ge">
                        <td colspan="2"></td>
                    </tr>
                    </TBODY>
                </table>
                <table align="center">
                    <tr>
                        <td width="40%"></td>
                        <td style="padding:10px 5px;">
                            <a href="javascript:void(0)" class="btn" onclick="ShowPop('1','提交保存成功')"><span> 提 交 </span></a>
                            <a href="tab.html" class="btn"><span> 返 回 </span></a>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="tabRight"></td>
        </tr>
    </table>
</div>
<!--下-->
<div class="editDownbg">
    <div class="editDown1"></div>
    <div class="editDown2"></div>
    <div class="editDown3"></div>
</div>
<div id="popupContainer"></div>
<script type="text/javascript">
    <!--
    mask=new Mask();
    popups=new Popups("popupContainer");
    function ShowPop(showType,showNote)
    {
        mask=new Mask();//这两行挪到里面来
        popups=new Popups("popupContainer");
        popups.createPopup(showType,showNote,CallBack).show();
    }
    function CallBack()
    {
        alert("回调方法！");
    }
    //-->
</script>
</body>
</html>
