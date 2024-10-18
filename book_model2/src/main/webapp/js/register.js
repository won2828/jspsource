document.querySelector("#register .btn-success").addEventListener("click", () => {
	
	// 아이디 가져오기
	const userid = document.querySelector("#userid").value;
	
	const form = new FormData();
	form.append("userid",userid);
	
	fetch(`/dup.do`,{
		method:"post",		
		body:new URLSearchParams(form)
	})
	.then(response => {
		if(!response.ok) throw new Error("주소를 확인해 주세요");
		return response.text();
	})
	.then(data => {
		console.log(data);
		
		if(data.trim() == "true"){
			alert("아이디 사용할 수 있음");			
		}else{
			alert("아이디 사용할 수 없음");	
		}
		
	})
	.catch(error => console.log(error));
})