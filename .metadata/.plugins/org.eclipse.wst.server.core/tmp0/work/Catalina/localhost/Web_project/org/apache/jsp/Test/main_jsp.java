/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.71
 * Generated at: 2021-11-28 16:23:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"utf-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\r\n");
      out.write("    <meta name=\"description\" content=\"\" />\r\n");
      out.write("    <meta name=\"author\" content=\"\" />\r\n");
      out.write("    <title>Modern Business - Start Bootstrap Template</title>\r\n");
      out.write("    <!-- Favicon-->\r\n");
      out.write("    <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\r\n");
      out.write("    <!-- Bootstrap icons-->\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <!-- Core theme CSS (includes Bootstrap)-->\r\n");
      out.write("    <link href=\"css/styles.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link href=\"css/rank.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link href=\"css/realtime.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\" type=\"text/javascript\"></script>  \r\n");
      out.write("	<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>\r\n");
      out.write("	<link href=\"https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"d-flex flex-column h-100\">\r\n");

	String userID = null;
if(session.getAttribute( "userID") != null){
	userID = (String) session.getAttribute("userID");
}

      out.write("\r\n");
      out.write("<main class=\"flex-shrink-0\">\r\n");
      out.write("  		<!-- Navigation-->\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("  	<div class=\"container px-5\">\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"main.jsp\">Movie Star</a>\r\n");
      out.write("      <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\r\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\r\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"main.jsp\">Home</a></li>\r\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"movieInfo.jsp\">Movie</a></li>\r\n");
      out.write("              <li class=\"nav-item me-sm-3\"><a class=\"nav-link\" href=\"now_playing.jsp\">Current Movies</a></li>\r\n");
      out.write("              <div id=\"content \" class=\"nav-item dropdown \">\r\n");
      out.write("                  <div class=\"\"style=\" color: white;padding-left:10px; \">\r\n");
      out.write("        지난주 박스오피스\r\n");
      out.write("    </div>\r\n");
      out.write("    <dl id=\"rank-list\" style=\"\">\r\n");
      out.write("        <dt>실시간 급상승 검색어</dt>\r\n");
      out.write("        <dd>\r\n");
      out.write("            <ol id=\"rank\" style=\"padding-left : 10px;\">\r\n");
      out.write("                <li><a href=\"#\">1. </a></li>\r\n");
      out.write("                <li><a href=\"#\">2. </a></li>\r\n");
      out.write("                <li><a href=\"#\">3. </a></li>\r\n");
      out.write("                <li><a href=\"#\">4. </a></li>\r\n");
      out.write("                <li><a href=\"#\">5. </a></li>\r\n");
      out.write("                <li><a href=\"#\">6. </a></li>\r\n");
      out.write("                <li><a href=\"#\">7. </a></li>\r\n");
      out.write("                <li><a href=\"#\">8. </a></li>\r\n");
      out.write("                <li><a href=\"#\">9. </a></li>\r\n");
      out.write("                <li><a href=\"#\">10. </a></li>\r\n");
      out.write("            </ol>\r\n");
      out.write("        \r\n");
      out.write("        </dd>\r\n");
      out.write("    </dl>\r\n");
      out.write("    <div id =\"content11\" class=\"dropdown-content \" style=\"z-index: 2; \">\r\n");
      out.write("        <div id =\"rank-list1\" class=\" me-sm-3\">\r\n");
      out.write("        <ol style=\"list-style-type: none\" id= \"rank1\" >\r\n");
      out.write("                 <li><a href=\"#\">1. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">2. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">3. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">4. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">5. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">6. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">7. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">8. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">9. </a></li>\r\n");
      out.write("                 <li><a href=\"#\">10. </a></li>\r\n");
      out.write("             </ol>\r\n");
      out.write("             </div>\r\n");
      out.write("         </div>\r\n");
      out.write("     </div>\r\n");
      out.write("     \r\n");
      out.write("     \r\n");
      out.write("     <div id=\"login-form\">\r\n");
      out.write("         <ul>\r\n");
      out.write("         ");

if(userID == null){
	
      out.write("\r\n");
      out.write("         <li class=\"nav-item \"><a class=\" btn btn-outline-light me-sm-3\" href=\"login.html\">Login</a></li>\r\n");
      out.write("         <li class=\"nav-item\"><a class=\" btn btn-outline-light me-sm-3\" href=\"signUp.html\">Sign Up</a></li>\r\n");
      out.write("         ");
}
         else{
         
      out.write("\r\n");
      out.write("         Welcome ");
      out.print(userID );
      out.write("\r\n");
      out.write("         <li class=\"nav-item\"><a class=\" btn btn-outline-light me-sm-3\" href=\"logoutAction.jsp\">Log Out</a></li>\r\n");
      out.write("         ");
}
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div> \r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("<!-- Header-->\r\n");
      out.write("<header class=\"bg-dark py-5\">\r\n");
      out.write("    <div class=\"container px-5\">\r\n");
      out.write("        <div class=\"row gx-5 align-items-center justify-content-center\">\r\n");
      out.write("            <div class=\"col-lg-8 col-xl-7 col-xxl-6\">\r\n");
      out.write("                <div class=\"my-5 text-center text-xl-start\">\r\n");
      out.write("                    <h1 class=\"display-5 fw-bolder text-white mb-2\">고독한 주인공의 이야기가 시작된다. 동영상 광고 제목</h1>\r\n");
      out.write("                    <p class=\"lead fw-normal text-white-50 mb-4\">여기는 동영상에 들어가 영화에 대한 간력한 설명을 입력하는 칸입니다.</p>\r\n");
      out.write("                    <div class=\"d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start\">\r\n");
      out.write("                        <a class=\"btn btn-primary btn-lg px-4 me-sm-3\" href=\"#features\">자세히 보기</a>\r\n");
      out.write("                        <a class=\"btn btn-outline-light btn-lg px-4\" href=\"#!\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-xl-5 col-xxl-6 d-none d-xl-block text-center\"><img class=\"img-fluid rounded-3 my-5\" src=\"https://dummyimage.com/600x400/343a40/6c757d\" alt=\"...\" /></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</header>\r\n");
      out.write("<!-- Features section-->\r\n");
      out.write("<section class=\"py-5\" id=\"features\">\r\n");
      out.write("    <div class=\"container px-5 my-5\">\r\n");
      out.write("        <div class=\"row gx-5\">\r\n");
      out.write("            <div class=\"col-lg-4 mb-5 mb-lg-0\"><h2 class=\"fw-bolder mb-0\">영화 소식</h2></div>\r\n");
      out.write("            <div class=\"col-lg-8\">\r\n");
      out.write("                <div class=\"row gx-5 row-cols-1 row-cols-md-2\">\r\n");
      out.write("                    <div class=\"col mb-5 h-100\">\r\n");
      out.write("                        <div class=\"feature bg-primary bg-gradient text-white rounded-3 mb-3\"><i class=\"bi bi-collection\"></i></div>\r\n");
      out.write("                        <h2 class=\"h5\">Featured title</h2>\r\n");
      out.write("                        <p class=\"mb-0\">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col mb-5 h-100\">\r\n");
      out.write("                        <div class=\"feature bg-primary bg-gradient text-white rounded-3 mb-3\"><i class=\"bi bi-building\"></i></div>\r\n");
      out.write("                        <h2 class=\"h5\">Featured title</h2>\r\n");
      out.write("                        <p class=\"mb-0\">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col mb-5 mb-md-0 h-100\">\r\n");
      out.write("                        <div class=\"feature bg-primary bg-gradient text-white rounded-3 mb-3\"><i class=\"bi bi-toggles2\"></i></div>\r\n");
      out.write("                        <h2 class=\"h5\">Featured title</h2>\r\n");
      out.write("                        <p class=\"mb-0\">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col h-100\">\r\n");
      out.write("                        <div class=\"feature bg-primary bg-gradient text-white rounded-3 mb-3\"><i class=\"bi bi-toggles2\"></i></div>\r\n");
      out.write("                        <h2 class=\"h5\">Featured title</h2>\r\n");
      out.write("                        <p class=\"mb-0\">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("<!-- Testimonial section-->\r\n");
      out.write("<div class=\"py-5 bg-light\">\r\n");
      out.write("    <div class=\"container px-5 my-5\">\r\n");
      out.write("        <div class=\"row gx-5 justify-content-center\">\r\n");
      out.write("            <div class=\"col-lg-10 col-xl-7\">\r\n");
      out.write("                <div class=\"text-center\">\r\n");
      out.write("                    <div class=\"fs-4 mb-4 fst-italic\">10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 '듄'이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데…위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!</div>\r\n");
      out.write("                    <div class=\"d-flex align-items-center justify-content-center\">\r\n");
      out.write("                        <img class=\"rounded-circle me-3\" src=\"https://dummyimage.com/40x40/ced4da/6c757d\" alt=\"...\" />\r\n");
      out.write("                        <div class=\"fw-bold\">\r\n");
      out.write("                            Tom Ato\r\n");
      out.write("                            <span class=\"fw-bold text-primary mx-1\">/</span>\r\n");
      out.write("                            CEO, Pomodoro\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\" d-none d-xl-block text-center\"><img class=\"img-fluid rounded-3 my-5\" src=\"https://dummyimage.com/600x400/343a40/6c757d\" alt=\"...\" /></div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- Blog preview section-->\r\n");
      out.write("<section class=\"py-5\">\r\n");
      out.write("    <div class=\"container px-5 my-5\">\r\n");
      out.write("        <div class=\"row gx-5 justify-content-center\">\r\n");
      out.write("            <div class=\"col-lg-8 col-xl-6\">\r\n");
      out.write("                <div class=\"text-center\">\r\n");
      out.write("                    <h2 class=\"fw-bolder\">최신작 트레일러</h2>\r\n");
      out.write("                    <p class=\"lead fw-normal text-muted mb-5\">트레일러 영상을 나열하는 공간입니다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row gx-5\">\r\n");
      out.write("            <div class=\"col-lg-4 mb-5\">\r\n");
      out.write("                <div class=\"card h-100 shadow border-0\">\r\n");
      out.write("                    <img class=\"card-img-top\" src=\"https://dummyimage.com/600x350/ced4da/6c757d\" alt=\"...\" />\r\n");
      out.write("                    <div class=\"card-body p-4\">\r\n");
      out.write("                        <div class=\"badge bg-primary bg-gradient rounded-pill mb-2\">News</div>\r\n");
      out.write("                        <a class=\"text-decoration-none link-dark stretched-link\" href=\"#!\"><h5 class=\"card-title mb-3\">Blog post title</h5></a>\r\n");
      out.write("                        <p class=\"card-text mb-0\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"card-footer p-4 pt-0 bg-transparent border-top-0\">\r\n");
      out.write("                        <div class=\"d-flex align-items-end justify-content-between\">\r\n");
      out.write("                            <div class=\"d-flex align-items-center\">\r\n");
      out.write("                                <img class=\"rounded-circle me-3\" src=\"https://dummyimage.com/40x40/ced4da/6c757d\" alt=\"...\" />\r\n");
      out.write("                                <div class=\"small\">\r\n");
      out.write("                                    <div class=\"fw-bold\">Kelly Rowan</div>\r\n");
      out.write("                                    <div class=\"text-muted\">March 12, 2021 &middot; 6 min read</div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-4 mb-5\">\r\n");
      out.write("                <div class=\"card h-100 shadow border-0\">\r\n");
      out.write("                    <img class=\"card-img-top\" src=\"https://dummyimage.com/600x350/adb5bd/495057\" alt=\"...\" />\r\n");
      out.write("                    <div class=\"card-body p-4\">\r\n");
      out.write("                        <div class=\"badge bg-primary bg-gradient rounded-pill mb-2\">Media</div>\r\n");
      out.write("                        <a class=\"text-decoration-none link-dark stretched-link\" href=\"#!\"><h5 class=\"card-title mb-3\">Another blog post title</h5></a>\r\n");
      out.write("                        <p class=\"card-text mb-0\">This text is a bit longer to illustrate the adaptive height of each card. Some quick example text to build on the card title and make up the bulk of the card's content.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"card-footer p-4 pt-0 bg-transparent border-top-0\">\r\n");
      out.write("                        <div class=\"d-flex align-items-end justify-content-between\">\r\n");
      out.write("                            <div class=\"d-flex align-items-center\">\r\n");
      out.write("                                <img class=\"rounded-circle me-3\" src=\"https://dummyimage.com/40x40/ced4da/6c757d\" alt=\"...\" />\r\n");
      out.write("                                <div class=\"small\">\r\n");
      out.write("                                    <div class=\"fw-bold\">Josiah Barclay</div>\r\n");
      out.write("                                    <div class=\"text-muted\">March 23, 2021 &middot; 4 min read</div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-4 mb-5\">\r\n");
      out.write("                <div class=\"card h-100 shadow border-0\">\r\n");
      out.write("                    <img class=\"card-img-top\" src=\"https://dummyimage.com/600x350/6c757d/343a40\" alt=\"...\" />\r\n");
      out.write("                    <div class=\"card-body p-4\">\r\n");
      out.write("                        <div class=\"badge bg-primary bg-gradient rounded-pill mb-2\">News</div>\r\n");
      out.write("                        <a class=\"text-decoration-none link-dark stretched-link\" href=\"#!\"><h5 class=\"card-title mb-3\">The last blog post title is a little bit longer than the others</h5></a>\r\n");
      out.write("                        <p class=\"card-text mb-0\">Some more quick example text to build on the card title and make up the bulk of the card's content.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"card-footer p-4 pt-0 bg-transparent border-top-0\">\r\n");
      out.write("                        <div class=\"d-flex align-items-end justify-content-between\">\r\n");
      out.write("                            <div class=\"d-flex align-items-center\">\r\n");
      out.write("                                <img class=\"rounded-circle me-3\" src=\"https://dummyimage.com/40x40/ced4da/6c757d\" alt=\"...\" />\r\n");
      out.write("                                <div class=\"small\">\r\n");
      out.write("                                    <div class=\"fw-bold\">Evelyn Martinez</div>\r\n");
      out.write("                                    <div class=\"text-muted\">April 2, 2021 &middot; 10 min read</div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Call to action-->\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("</main>\r\n");
      out.write("<!-- Footer-->\r\n");
      out.write("<footer class=\"bg-dark py-4 mt-auto\">\r\n");
      out.write("    <div class=\"container px-5\">\r\n");
      out.write("        <div class=\"row align-items-center justify-content-between flex-column flex-sm-row\">\r\n");
      out.write("            <div class=\"col-auto\"><div class=\"small m-0 text-white\">Copyright &copy; Your Website 2021</div></div>\r\n");
      out.write("            <div class=\"col-auto\">\r\n");
      out.write("                <a class=\"link-light small\" href=\"#!\">Privacy</a>\r\n");
      out.write("                <span class=\"text-white mx-1\">&middot;</span>\r\n");
      out.write("                <a class=\"link-light small\" href=\"#!\">Terms</a>\r\n");
      out.write("                <span class=\"text-white mx-1\">&middot;</span>\r\n");
      out.write("                <a class=\"link-light small\" href=\"#!\">Contact</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("                \r\n");
      out.write("        \r\n");
      out.write("                <!-- Bootstrap core JS-->\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<!-- Core theme JS-->\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-1.11.3.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/scripts.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}