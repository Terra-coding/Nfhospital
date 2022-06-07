const intbutton = document.getElementById("interestCont");
let $ptname =  $("#ptname").val();
let $ptcd = $("#ptcd").val();
let $wrtname = $("#wrtname").val();/* 작성자 성함 */
let $etc = $("#ptrelationetc").val();
let $title = $("#title").val();
let $prevent = $("#prevent").val();
let $tel2 = $("#tel2").val();
let $tel3 = $("#tel3").val();
let check = false;
function append(){
    alert("관심컨텐츠로 등록되었습니다.");
}

function paste(){
    alert("주소가 복사되었습니다.");
}


/* 체크박스 동작 */
$(".feFoCheck").on('click', function(){
    if($(this).parent().attr('class') == "checkWrap"){
        if(!$(this).attr('class').match('checked')){
            $(this).addClass('checked');
            check = true;
        }else{
            $(this).removeClass('checked');
            check = false;
        }
    }else if($(this).parent().attr('class') == "txtWrap"){
        if(!$(this).attr('class').match('checked')){
            $(this).addClass('checked');
        }else{
            $(this).removeClass('checked');
        }
    
    }
})

$("#ptname").on('keyup', function(){
    $ptname = $(this).val();
})

$("#ptcd").on('keyup', function(){
    $ptcd = $(this).val();
})

$("#wrtname").on('keyup', function(){
    $wrtname = $(this).val();
})

$("#ptrelationetc").on('keyup', function(){
    $etc = $(this).val();
})

$("#title").on('keyup', function(){
    $title = $(this).val();
})

$("#prevent").on('keyup', function(){
    $prevent = $(this).val();
})

$("#tel2").on('keyup', function(){
    $tel2 = $(this).val();
})

$("#tel3").on('keyup', function(){
    $tel3 = $(this).val();
})

/* 글작성자와 환자가 동일 버튼 클릭 시 */
$("span[class='txtWrap']>.feFoCheck").on('click', function(){
    if(!$(this).attr('class').match('checked')){
        $(".checked0").removeClass('checked0');
        $("label[for='radio07']").addClass('checked0');
        $("#wrtname").val("");
    }else{
        $("label[for='radio07']").removeClass('checked0');
        $(".checked0").removeClass('checked0');
        $("label[for='radio01']").addClass('checked0');
        $("#wrtname").val($ptname);
    }
})

/* 라디오버튼 동작 */
$("input[type='radio']").on('click', function(){
    $id = $(this).attr('id');
    if(!$("label[for="+ $id +"]").attr('class').match('checked0')){
        $(".checked0").removeClass('checked0');
        $("label[for="+ $id +"]").addClass('checked0');
    }
})

/* 전화번호 앞자리 선택 */
$("#tel1").on('click', function(){
    $("label[for='tel1']>span").text($(this).val());
})


/* 자동가입방지문자 */


$(".bcLinkLayerBtn").on('click', function(){
    if(!$(this).attr('class').match('active')){
        $(this).addClass('active');
        $(this).next('ul').attr('aria-hidden', 'false');
        $(this).next('ul').attr('aria-expanded', 'true');
        $(this).next('ul').css('display', 'block');
    }else{
        $(this).removeClass('active');
        $(this).next('ul').attr('aria-hidden', 'true');
        $(this).next('ul').attr('aria-expanded', 'false');
        $(this).next('ul').css('display', 'none');
        
    }

})





/* 유효성 검사 */
const $button = $(".btnType03");/* 정보이용 동의 */


$button.on('click', function(){
    if(!check){
        alert("개인정보 수집 및 이용안내에 동의해 주시기 바랍니다.");
        return;
    }

    if(!$ptname){
        alert("[환자성함] 입력하신 정보를 다시 확인 해 주시기 바랍니다.");
        return;
    }

    if(!$ptcd){
        alert("[환자등록정보 성함] 입력하신 정보를 다시 확인 해 주시기 바랍니다.")
        return;
    }

    if(!$wrtname){
        alert("[작성자 성함] 입력하신 정보를 다시 확인 해 주시기 바랍니다.")
        return;
    }

    if(!$tel2){
        alert("[휴대전화 두번째 자리] 입력하신 정보를 다시 확인 해 주시기 바랍니다.")
        return;
    }
    
    if(!$tel3){
        alert("[휴대전화 세번째 자리] 입력하신 정보를 다시 확인 해 주시기 바랍니다.")
        return;
    }

    if($("label[for='radio07']").attr('class').match('checked0') && !$etc){
        alert("[환자와의 관계 > 기타] 입력하신 정보를 다시 확인 해 주시기 바랍니다.");
        return;
    }

    if(!$title){
        alert("[제목] 입력하신 정보를 다시 확인 해 주시기 바랍니다.");
        return;
    }
    
//확인버튼 클릭 시
    function send(){
    	writeForm.submit();
    }

})

