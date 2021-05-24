
<body>
<div id="switch">
	<label>입력</label>
	<input id="input" type="text">
	<input id="button" type="button" value="확인">
	<hr>
	<label>결과</label>
	<input id="result" type="text">
</div>

<script>
var input = document.getElementById('input');
var button = document.getElementById('button');
var result = document.getElementById('result');

button.onclick = function(){
	var a = input.value;
	
	switch(a){
	case 'A':
	case 'a':
		result.value = 'VIP 고객';
		break;
	case 'B':
	case 'b':
		result.value = '우수 고객';
		break;
	case 'C':
	case 'c':
		result.value = '고객';
		break;
	case 'D':
	case 'd':
		result.value = '진상 고객';
		break;
	case 'E': case 'e' : case 'f':
	case 'F':
		result.value = '입장 금지';
		break;
	default:
		result.value = 'A~F까지 입력하세요.(대소문자 구분하지 않음)';
	}
}
</script>

[출처] 최성원 (JobTC(Job Training Center of Korea)) | 작성자 marinruin







