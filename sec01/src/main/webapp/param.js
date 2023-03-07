/**
 * 
 */
 
 function check(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	} else if (document.frm.age.value == ""){
		alert ("나이를 입력해 주세요.");
		document.frm.age.focus();
		return false;
		
	} else if (isNaN(document.frm.age.value)){
		alert("나이는 숫자로 입력하세요.");
		document.frm.age.focus();
		return false;
		
	} else {
		return true;
	}
}

 function check1(){
	if(document.frm1.id.value == ""){
		alert("아이디를 입력해주세요.");
		document.frm1.id.focus();
		return false;
	} else if (document.frm1.age.value == ""){
		alert ("나이를 입력해 주세요.");
		document.frm1.age.focus();
		return false;
		
	} else if (isNaN(document.frm1.age.value)){
		alert("나이는 숫자로 입력하세요.");
		document.frm1.age.focus();
		return false;
		
	} else {
		return true;
	}
}