//삭제버튼 누르면 "삭제하시겠습니까 " confirm창이 나타나고
//긍정을 눌렀을 때 삭제 처리

var btnContainerElem = document.querySelector('#btnContainer');
var btnDelElem = btnContainerElem.querySelector('#btnDel');
btnDelElem.addEventListener('click',function (){
    if(confirm('삭제하시겠습니까')){
        location.href= '/board/del?iboard='+ btnContainerElem.dataset.iboard;
    }
})