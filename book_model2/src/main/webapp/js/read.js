// 목록 클릭 시 리스트로 이동(location)
document.querySelector(".btn-primary").addEventListener("click",()=>{
	location.href = "/list.do?keyword="+keyword;
});