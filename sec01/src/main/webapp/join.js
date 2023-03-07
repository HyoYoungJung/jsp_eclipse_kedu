/**
 * 
 */
 
  function check(){
	if(document.frm.name.value == ""){
		alert("이름을 입력해주세요.");
		document.frm.name.focus();
		return false;
	
	} else if (document.frm.idnum1.value == ""){
		alert ("주민번호 앞자리를 입력해 주세요.");
		document.frm.idnum1.focus();
		return false;
		
	} else if (document.frm.idnum2.value == ""){
		alert ("주민번호를 완성해 주세요.");
		document.frm.idnum2.focus();
		return false;
		
	} else if (isNaN(document.frm.idnum1.value)){
		alert("주민번호는 숫자로 입력하세요.");
		document.frm.idnum1.focus();
		return false;

	} else if (isNaN(document.frm.idnum2.value)){
		alert("주민번호는 숫자로 입력하세요.");
		document.frm.idnum2.focus();
		return false;		
		
	} else if (document.frm.id.value == ""){
		alert ("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;

	} else if (document.frm.pw.value == ""){
		alert ("비밀번호를 입력해 주세요.");
		document.frm.pw.focus();
		return false;

	} else if (document.frm.mail1.value == ""){
		alert ("이메일을 입력해 주세요.");
		document.frm.mail1.focus();
		return false;
		
	} else if (document.frm.mail2.value == ""){
		alert ("이메일 주소를 완성해 주세요.");
		document.frm.mail1.focus();
		return false;
		
	} else if (document.frm.postnum.value == ""){
		alert ("우편번호를 입력해 주세요.");
		document.frm.postnum.focus();
		return false;
		
	} else if (isNaN(document.frm.postnum.value)){
		alert("우편번호는 숫자로 입력하세요.");
		document.frm.postnum.focus();
		return false;

	} else if (document.frm.addr1.value == ""){
		alert ("주소를 입력해 주세요.");
		document.frm.addr1.focus();
		return false;
		
	} else if (document.frm.addr2.value == ""){
		alert ("상세 주소를 입력해 주세요.");
		document.frm.addr2.focus();
		return false;

	} else if (document.frm.phone.value == ""){
		alert ("전화번호를 입력해 주세요.");
		document.frm.phone.focus();
		return false;

	} else if (isNaN(document.frm.phone.value)){
		alert("전화번호는 숫자로만 입력하세요.");
		document.frm.phone.focus();
		return false;
		
	} else if (document.frm.job.value == ""){
		alert ("직업을 선택해 주세요.");
		document.frm.job.focus();
		return false;		
		
	} else {
		return true;
	}
}