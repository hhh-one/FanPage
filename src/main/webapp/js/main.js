/**
 * 
 */

//board_content.jsp 댓글 버튼 비활성화
const commentInput = document.getElementById('comment-input');
const submitButton = document.getElementById('submit-button');
  
// content 입력값이 변경될 때마다 체크
commentInput.addEventListener('input', function() {
 	if (commentInput.value.trim() === '') {
		 submitButton.disabled = true; // 비활성화
    } else {
		submitButton.disabled = false; // 활성화
    }
});