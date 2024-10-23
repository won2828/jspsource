// 목록 클릭 시
// actionForm action="/list.do" 수정 후 submit

const actionForm = document.querySelector("#actionForm");

// read.jsp 수정, 목록 버튼 이벤트
// read.jsp 에서 수정 클릭시 
// actionForm action="/modify.do" 수정 후 submit
const infoBtn = document.querySelector("#readForm .btn-info");
if (infoBtn) {
	infoBtn.addEventListener("click", () => {
		// 값이 있다면
		actionForm.action = "/modify.do";
		actionForm.submit();
	});
}

document.querySelector("#readForm .btn-success").addEventListener("click", () => {
	// actionForm bno 요소 제거
	actionForm.querySelector("[name='bno']").remove();
	actionForm.action = "/list.do";
	actionForm.submit();
});


// modify.jsp 수정,삭제,목록 버튼 이벤트


// 삭제 클릭 시
// readForm action= /delete.do 변경 후 readForm submit 
const removeBtn = document.querySelector(".btn-danger");
if (removeBtn) {
	removeBtn.addEventListener("click", () => {
		readForm.action = "/delete.do";
		readForm.submit();
	});
}

// modify.jsp 에서 수정 클릭시 (submit) => submit 중지
// readForm password,title,content 값이 있는 지 확인하고
// 없다면 msg 띄우고, 있으면 submit
const readForm = document.querySelector("#readForm");
readForm.addEventListener("submit", (e) => {
	e.preventDefault();

	const title = readForm.querySelector("#title");
	const content = readForm.querySelector("#content");
	const password = readForm.querySelector("#password");

	if (title.value === "") {
		alert("제목을 입력하세요");
		title.focus();
		return;
	} else if (content.value === "") {
		alert("내용을 입력하세요");
		content.focus();
		return;
	} else if (password.value === "") {
		alert("비밀번호를 입력하세요");
		password.focus();
		return;
	}

	readForm.submit();
})














