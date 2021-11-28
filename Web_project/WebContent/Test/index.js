var key = "?key=8b117d7ecea1df6f20bc8a2f3a2d0fa4" // key 앞에 <?key=>를 붙여야함 : prameter
var itemPerPage = "&itemPerPage=20" //20개를 가져올것이라서
const url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json"
            + key
            + itemPerPage 
var item_int = 20

var title = document.getElementById('a') //html에서 id a에 해당하는 것
fetch(url)
.then(response=>response.json())
.then(function(msg){
    // msg가 어떻게 생겨먹었나?
    console.log(msg);

    // i<10 난 10개만 변수로 부여해도 괜찮아요 10대신
    for(let i = 0; i<10; i++){
        // console에 찍은 msg 속으로 들어가보면 movieListResult -> MovieList 를 확인할 수 있어요
        // 해당 내용을 short_url에 담아요 for문이니깐 본인이 원하는 횟수만큼
        short_url = msg.movieListResult.movieList[i];
        
        //short_url이 어떻게 생겨먹었나?
        console.log(short_url);
        
        // 영화제목을 id = "a" div태그에 추가해주기 short_url 중에서 movieNm을 movieNm이라는 변수에 담았어요
        let movieNm = document.createTextNode(short_url.movieNm);
        title.appendChild(movieNm);

        // 줄바꿈을 위한 br태그 _ 없어도됨
        let br = document.createElement('br');
        title.appendChild(br);

    }
});
            