var key = "?key=8b117d7ecea1df6f20bc8a2f3a2d0fa4" // key 앞에 <?key=>를 붙여야함 : prameter
var itemPerPage = "&itemPerPage=20" //20개를 가져올것이라서
var targetDt = "&targetDt=20210920"
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
            
