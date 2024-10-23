//목록 클릭 시 actionForm submit
const actionForm = document.querySelector("#actionForm");
document.querySelector("#reply .btn-success").addEventListener("click", () => {
	
	
	actionForm.submit();
});