/*!
* Start Bootstrap - Modern Business v5.0.5 (https://startbootstrap.com/template-overviews/modern-business)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-modern-business/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

var key = "?key=8b117d7ecea1df6f20bc8a2f3a2d0fa4" // key 앞에 <?key=>를 붙여야함 : prameter
var itemPerPage = "&itemPerPage=20" //20개를 가져올것이라서
var targetDt = "&targetDt=20211101"
const url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json"
            + key
            + targetDt
            + itemPerPage 
var item_int = 20




var rows1 = document.getElementById('rank');
var rows2 = document.getElementById('rank1');
var rows= rows1.getElementsByTagName('li');
var rows22= rows2.getElementsByTagName('li');

fetch(url)
.then(response=>response.json())
.then(function(msg){
    // msg가 어떻게 생겨먹었나?
    console.log(msg);
    for(let i = 0;i<10;i++){
    short_url = msg.boxOfficeResult.weeklyBoxOfficeList[i];
    // i<10 난 10개만 변수로 부여해도 괜찮아요 10대신
    var cells = rows[i].getElementsByTagName("a");
    var cells1 = rows22[i].getElementsByTagName("a");
    let movieNm = document.createTextNode(short_url.movieNm);
        cells[0].appendChild(movieNm);
        cells1[0].appendChild(movieNm);

        // 줄바꿈을 위한 br태그 _ 없어도됨
        
    }
    for(let i = 0;i<10;i++){
        short_url = msg.boxOfficeResult.weeklyBoxOfficeList[i];
        // i<10 난 10개만 변수로 부여해도 괜찮아요 10대신
        var cells = rows[i].getElementsByTagName("a");
        var cells1 = rows22[i].getElementsByTagName("a");
        let movieNm = document.createTextNode(short_url.movieNm);
            cells[0].appendChild(movieNm);
            //cells1[0].appendChild(movieNm);
    
            // 줄바꿈을 위한 br태그 _ 없어도됨
            
        }
   
    
});
            

$(function() {
    
    var count = $('#rank-list li').length;
    var height = $('#rank-list li').height();
    var reset = 0;
    function step(index) {
        $('#rank-list ol').delay(2000).animate({
            top: -height * index,
        }, 500, function() {
            console.log('2');
            
                step((index + 1) % count);
        });
    }
    console.log(rows[0]);
    step(1);
    
    $('#rank-list ').on("click",function(){
        if(reset==0){
        $('#rank-list').css('height','200px');
        
        $('#rank-list ol').css('top','0');
        reset=1;
        }
        else{
            reset=0;
                console.log('3');
                
               
                $('#rank-list').css('height','20px');
                
              
        };
    });
    
    

   
});

