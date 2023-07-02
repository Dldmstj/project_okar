/*!
* Start Bootstrap - Shop Item v5.0.6 (https://startbootstrap.com/template/shop-item)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-item/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

// 세금 및 부대비용(이전등록비 + 관리비 + 대행수수료)

// 할부 function
// (차량예상가격 - 선수금)에 개월 수 n빵 + 금리7%
function monthly(){
	var carPrice = document.querySelector("#carCost").value;
	var month = document.querySelector("[name=radioBtn]").value;
	var monthCost = carPrice/month;
	
	console.log(carPrice);
	console.log(month);
	console.log(monthCost);
	var monthlyCost = document.querySelector("#monthlyCost");
	monthlyCost.innerText = parseInt(monthCost)+"원";
}
