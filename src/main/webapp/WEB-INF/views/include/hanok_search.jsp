<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <style>
    #searching{
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin: 20px auto;
        width: 60%;
        gap: 5px;
    }
    #searching div{
        display: flex;
        align-items: center;
        gap: 15px;
        flex: 1;
        margin: 15px;
    }
    #searching input{
        padding: 8px 10px;
        border-radius: 8px;
        font-size: 14px;
        border: 1px solid #ccc;

    }
    button{
        padding: 10px 30px;
        font-size: 16px;
        background-color: #e6e6e6; /* 기본 색상 */
        border: black;
        border-radius: 10px;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }
    button:hover {
        background-color: #939393; /* 클릭 시 색상 */
    }
    #btn {
        display: flex;
        align-items: center;
        justify-content: flex-start;
        flex: 1;
    }
    
</style>

<script>
$(function() {
    // 현재 날짜를 "YYYY-MM-DD" 형식으로 가져오는 함수
    const today = new Date().toISOString().split("T")[0];

    // 입력 필드 요소 가져오기
    const checkInInput = document.getElementById("checkInDate");
    const checkOutInput = document.getElementById("checkOutDate");

    checkInInput.setAttribute("min", today);
    checkOutInput.setAttribute("min", today);

    // 입력값 변경 시 이전 날짜 선택 방지
    checkInInput.addEventListener("input", function () {
        if (this.value < today) {
            alert("이전 날짜는 선택할 수 없습니다.");
            this.value = today;
        }
    });

    checkOutInput.addEventListener("input", function () {
        if (this.value < today) {
            alert("이전 날짜는 선택할 수 없습니다.");
            this.value = today;
        }
    });
    
    document.getElementById('checkInDate').value = today;
    document.getElementById('checkOutDate').value = today;
});
</script>

<!--검색-->
<form action="hanok_search.do" method="post">
	<div id="searching">
	    <!--장소 검색-->
	    <div id="loc" style="flex: 1;">
	        <img src="/assets/img/search_location.png" alt="위치" style="width: 30px; height: 35px;">
	        <input type="text" id="location" name="location" style="width: 200px;">
	    </div>
	
	    <!--날짜 검색-->
	    <div id="check" style="flex: 1;">
	        <img src="/assets/img/search_calender.png" alt="캘린더" style="width: 35px; height: 35px;">
	        <input type="date" id="checkInDate" name="checkInDate" value=""/>
	        <input type="date" id="checkOutDate" name="checkOutDate" value=""/>
	    </div>
	
	    <!--인원 수 검색-->
	    <div id="people" style="flex: 1;">
	        <img src="/assets/img/search_people.png" alt="인원" style="width: 35px; height: 35px; margin: 10px">
	        <input type="text" id="capacity" name="capacity" style="width: 100px;">
	    </div>
	    <div id="btn">
	        <button class="search-button">Search</button>
	    </div>
	</div>
</form>
