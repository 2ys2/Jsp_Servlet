/* main */

/*
<html> onclick="return sendData()"

function sendData() {
	let f = document.frm;
	
	if( f.id.value === "" ) {
		window.alert('id는 필수 사항입니다.');
		f.id.focus();
		return false;
	}
	
	if( f.id.value.length < 4 ||  f.id.value.length > 15 ) {
		window.alert('id는 4자 이상 15자 이하로 넣어주세요.');
		f.id.focus();
		return false;
	}
	
	if( f.pwd.value === "" ) {
		window.alert('password는 필수 사항입니다.');
		f.pwd.focus();  // 커서를 맞춰줌
		return false;
	}
	
	if( f.pwd.value.length < 4 ||  f.pwd.value.length > 8 ) {
		window.alert('password는 4자 이상 8자 이하로 넣어주세요.');
		f.pwd.select();  // 커서를 맞춰줌-이전 데이터를 지우지 않고 포커스 맞춰줌
		return false;
	}
}

*/


const submit = document.querySelector("input[type=submit]");
const idInput = document.querySelector("input[name=id]");
const pwInput = document.querySelector("input[name=pwd]");

submit.addEventListener("click", (e) => {
    // if (idInput.value === "" || pwInput.value === "") {
    //     e.preventDefault();
    //     alert("아이디와 패스워드는 입력되어야합니다.");
    // }
    
    e.preventDefault();
    let f = document.forms[0];
    if( f.id.value === "" ) {
        window.alert('id는 필수 사항입니다.');
        f.id.focus();
        return false;
    }

    if( f.id.value.length < 4 ||  f.id.value.length > 15 ) {
        window.alert('id는 4자 이상 15자 이하로 넣어주세요.');
        f.id.focus();
        return false;
    }

    if( f.pwd.value === "" ) {
        window.alert('password는 필수 사항입니다.');
        f.pwd.focus();  // 커서를 맞춰줌
        return false;
    }

    if( f.pwd.value.length < 4 ||  f.pwd.value.length > 8 ) {
        window.alert('password는 4자 이상 8자 이하로 넣어주세요.');
        f.pwd.select();  // 커서를 맞춰줌-이전 데이터를 지우지 않고 포커스 맞춰줌
        return false;
    }
    f.requestSubmit();
});
