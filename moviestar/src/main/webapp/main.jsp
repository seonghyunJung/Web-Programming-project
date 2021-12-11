<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Modern Business - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/rank.css" rel="stylesheet" />
    <link href="css/realtime.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>  
	<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
<%
	String userID = null;
if(session.getAttribute( "userID") != null){
	userID = (String) session.getAttribute("userID");
}
%>
<main class="flex-shrink-0">
  		<!-- Navigation-->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="main.jsp">Movie Star</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="main.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="movieInfo.jsp">Movie</a></li>
                <li class="nav-item me-sm-3"><a class="nav-link" href="now_playing.jsp">Current Movies</a></li>
                <div id="content " class="nav-item dropdown ">
                    <div class=""style=" color: white;padding-left:10px; ">
                        지난주 박스오피스
                    </div>
                    <dl id="rank-list" style="">
                        <dt>실시간 급상승 검색어</dt>
                        <dd>
                            <ol id="rank" style="padding-left : 10px;">
                                <li><a href="#">1. </a></li>
                                <li><a href="#">2. </a></li>
                                <li><a href="#">3. </a></li>
                                <li><a href="#">4. </a></li>
                                <li><a href="#">5. </a></li>
                                <li><a href="#">6. </a></li>
                                <li><a href="#">7. </a></li>
                                <li><a href="#">8. </a></li>
                                <li><a href="#">9. </a></li>
                                <li><a href="#">10. </a></li>
                            </ol>
                        
                        </dd>
                    </dl>
                    <div id ="content11" class="dropdown-content " style="z-index: 2; ">
                        <div id ="rank-list1" class=" me-sm-3">
                        <ol style="list-style-type: none" id= "rank1" >
                                    <li><a href="#">1. </a></li>
                                    <li><a href="#">2. </a></li>
                                    <li><a href="#">3. </a></li>
                                    <li><a href="#">4. </a></li>
                                    <li><a href="#">5. </a></li>
                                    <li><a href="#">6. </a></li>
                                    <li><a href="#">7. </a></li>
                                    <li><a href="#">8. </a></li>
                                    <li><a href="#">9. </a></li>
                                    <li><a href="#">10. </a></li>
                                </ol>
                                </div>
                    </div>
                </div>
                <li><div >
         				
				         <%
				if(userID == null){
					%>
				         <li class="nav-item "><a class=" btn btn-outline-light me-sm-3" href="login.html">Login</a></li>
				         <li class="nav-item"><a class=" btn btn-outline-light me-sm-3" href="signUp.html">Sign Up</a></li>
				         <%}
				         else{
				         %>
				         <li style="padding-right:30px;"><a style="color:white;"><h3>Welcome <%=userID %></h3></a></li>
				         <li class="nav-item"><a class=" btn btn-outline-light me-sm-3" href="logoutAction.jsp">Log Out</a></li>
				         <%}%>
                    
                    
                </div></li> 
             </ul>
         </div>
      </div>
</nav>
<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder text-white mb-2">올 겨울 12월 15일 스파이더맨이 다시 돌아온다!</h1>
                    <p class="lead fw-normal text-white-50 mb-4">SPIDER-MAN: NO WAY HOME - Official Trailer</p>
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                        <a class="btn btn-warning btn-lg px-4 me-sm-3" href="spidermanNowayhome.jsp">별점달러가기</a>
                    
                    </div>
                </div>
            </div>
            <div style="max-width:545px;">
            <!--  --><div  class="ratio ratio-16x9"><iframe src="https://www.youtube.com/embed/LXZ3Z_QF8QI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            </div>
        </div>
    </div>
</header>
<!-- Features section-->
<section class="py-5" id="features">
    <div class="container px-5 my-5">
        <div class="row gx-5">
            <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">영화 소식</h2></div>
            <div class="col-lg-8">
                <div class="row gx-5 row-cols-1 row-cols-md-2">
                    <div class="col mb-5 h-100">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
                        <img class="mb-2"style="width:100%;"src="images/hawkeye.PNG">
                        <h2 class="h5">마블의 미래가 여기에? 알고보면 좋은 '호크아이'에 대한 ...</h2>
                        <p class="mb-0">호크아이의 솔로 이야기는 원래 영화로 나올 예정이었다. 호크아이를 연기한 제레미 레너 역시 애초 호크아이 영화에...</p>
                    </div>
                    <div class="col mb-5 h-100">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-building"></i></div>
                        <img class="mb-2"style="width:100%;object-fit:cover;"src="images/encanto.PNG">
                        <h2 class="h5">'엔칸토' 흥행마법은 계속! 극장가 전체는 한파 가득</h2>
                        <p class="mb-0"><엔칸토 : 마법의 세계> 의 흥행마법이 이번 주말에도 계속됐다. 2주 연속 1위자리를 지키며 가족관객들을...</p>
                    </div>
                    <div class="col mb-5 mb-md-0 h-100">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                        <img class="mb-2"style="width:100%;"src="images/wandavision.PNG">
                        <h2 class="h5">2021년을 뜨겁게 달군 화제의 해외 드라마 모음</h2>
                        <p class="mb-0">다사다난했던 2021년도 마침표를 향해 가고 있다. 모두의 바람과 달리 올 한 해도 계속된 팬데믹으로 촬영이 중단되고,...</p>
                    </div>
                    <div class="col h-100">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                        <img class="mb-2"style="width:100%;"src="images/cho.PNG">
                        <h2 class="h5">출연진만 봐도 황홀한 할리우드 초호화 캐스팅 영화</h2>
                        <p class="mb-0">웨스 앤더슨 감독의 신착 <프렌치 디스패치> 는 자연스레 시상식을 떠올리게 만드는 황홀한 캐스팅으로 제작 단계에서부터...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Testimonial section-->
<div class="py-5 bg-light">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-10 col-xl-7">
                <div class="text-center">
                    <div class="fs-4 mb-4 fst-italic">10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 '듄'이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데…위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!</div>
                    <div class="d-flex align-items-center justify-content-center">
                        <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                        <div class="fw-bold">
                            Tom Ato
                            <span class="fw-bold text-primary mx-1">/</span>
                            CEO, Pomodoro
                        </div>
                    </div>
                </div>
                <br>
                <div class="ratio ratio-16x9" style="max-width:100%;"><iframe width="600" height="400" src="https://www.youtube.com/embed/-5Dc8EMVYBo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                
            </div>
        </div>
    </div>
</div>

<!-- Blog preview section-->
<
<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 ">
                <div class="text-center">
                    <h2 class="fw-bolder">최신작 <br>트레일러</h2>
                    <p class="lead fw-normal text-muted mb-5">최신 영화를 맛보기로 즐기세요!</p>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            <div class="col-lg-4 mb-5">
                <div class=" shadow border-0" style="background-color:white;">
                   <div class="ratio ratio-16x9"><iframe src="https://www.youtube.com/embed/DJs_ihmMZfg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">Trailer</div>
                        <a class="text-decoration-none link-dark" ><h5 class="card-title mb-3">엔칸토 : 메인 예고편</h5></a>
                        <p class="card-text mb-0" style="color:black;">[주토피아] 제작진과
디즈니의 놀라운 상상력이 만났다

올 겨울, 디즈니가 선사하는 뮤지컬 애니메이션✨
[엔칸토: 마법의 세계] 메인 예고편 공개!</p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                
                                <div class="small">
                                    <div class="fw-bold">Disney</div>
                                    <div class="text-muted">October 28, 2021 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 mb-5">
                <div class="shadow border-0" style="background-color:white;">
                   <div class="ratio ratio-16x9"><iframe src="https://www.youtube.com/embed/dWEQjU3GCE0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark" ><h5 class="card-title mb-3">연애 빠진 로맨스 : 메인 예고편</h5></a>
                        <p class="card-text mb-0" style="color:black;">"발 빼려다? 푹 빠졌다!" #전종서X#손석구의 신개념 로맨스❤</p><br><br>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                
                                <div class="small">
                                    <div class="fw-bold">CJ ENM</div>
                                    <div class="text-muted">November 29, 2021</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-5">
                <div class="shadow border-0" style="background-color:white;">
                   <div class="ratio ratio-16x9"><iframe src="https://www.youtube.com/embed/2L0TW0l3q3w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                    <div class="p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">Trailer</div>
                        <a class="text-decoration-none link-dark " ><h5 class="card-title mb-3">태일이 : 메인 예고편</h5></a>
                        <p class=" mb-0" style="color:black;">청년 전태일, 애니메이션으로 다시 태어난다!
가슴 벅차오르는 [태일이] 메인 예고편 공개!</p><br>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                
                                <div class="small">
                                    <div class="fw-bold">명필름스</div>
                                    <div class="text-muted">November 29, 2021 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         
        <!-- Call to action-->
            
        </div>
    </section>
</main>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto">
    <div class="container px-5">
        <div class="row align-items-center justify-content-between flex-column flex-sm-row">
            <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2021</div></div>
            <div class="col-auto">
                <a class="link-light small" href="#!">Privacy</a>
                <span class="text-white mx-1">&middot;</span>
                <a class="link-light small" href="#!">Terms</a>
                <span class="text-white mx-1">&middot;</span>
                <a class="link-light small" href="#!">Contact</a>
            </div>
        </div>
    </div>
</footer>

       
                
        
                <!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
<script src="js/scripts2.js"></script>
</body>
</html>