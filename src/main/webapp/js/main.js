/**
 * 
 */



  
  document.addEventListener('DOMContentLoaded', function() {
  // confirmDelete() 함수와 delete 버튼에 대한 이벤트 핸들러 등을 여기에 작성합니다.
  
  function confirmDelete(button) {
    // confirmDelete() 함수 내용은 이전과 동일하게 작성합니다.
    const bno = button.getAttribute('data-bno');
    const confirmResult = confirm("삭제하시겠습니까?");
    if (confirmResult) {
		alert('삭제되었습니다.');
      location.href = `board_delete.board?bno=${bno}`;
    } else {
      // 사용자가 "아니요"를 선택한 경우 추가 동작을 수행할 수 있습니다.
      // 예를 들어, 다른 작업을 수행하거나 아무 작업을 하지 않을 수 있습니다.
      // 필요에 따라 이 부분을 수정하여 사용하시면 됩니다.
      console.log("삭제가 취소되었습니다.");
    }
  }
  
  // delete 버튼에 대한 이벤트 핸들러 등록
  const deleteButtons = document.querySelectorAll('.delete-btn');
  deleteButtons.forEach(function(button) {
    button.addEventListener('click', function() {
      confirmDelete(button);
    });
  });
});
