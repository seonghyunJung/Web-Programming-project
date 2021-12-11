/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.71
 * Generated at: 2021-12-11 06:40:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import notice.Notice;
import notice.noticeDAO;
import java.util.ArrayList;

public final class now_005fplaying_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("notice.Notice");
    _jspx_imports_classes.add("notice.noticeDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css/now_playing.css\" />\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://unpkg.com/swiper/swiper-bundle.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css\">\n");
      out.write("	\n");
      out.write("<!-- Favicon-->\n");
      out.write("<link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("<!-- Bootstrap icons-->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("<!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("<link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"css/rank.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"css/realtime.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\" type=\"text/javascript\"></script>    \n");
      out.write("<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap\" rel=\"stylesheet\">\n");
      out.write("  <title>Now Playing</title>\n");
      out.write("</head>\n");
      out.write("<body class=\"d-flex flex-column h-100\">\n");
      out.write(" ");

	String userID = null;
if(session.getAttribute( "userID") != null){
	userID = (String) session.getAttribute("userID");
}

      out.write("\n");
      out.write("  <main class=\"flex-shrink-0\">\n");
      out.write("            <!-- Navigation-->\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("    <div class=\"container px-5\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"main.jsp\">Movie Star</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"main.jsp\">Home</a></li>\n");
      out.write("                <li class=\"nav-item\"><a class=\"nav-link\" href=\"movieInfo.jsp\">Movie</a></li>\n");
      out.write("                <li class=\"nav-item me-sm-3\"><a class=\"nav-link\" href=\"now_playing.jsp\">Current Movies</a></li>\n");
      out.write("                <div id=\"content \" class=\"nav-item dropdown \">\n");
      out.write("                    <div class=\"\"style=\" color: white;padding-left:10px; \">\n");
      out.write("                        지난주 박스오피스\n");
      out.write("                    </div>\n");
      out.write("                    <dl id=\"rank-list\" style=\"\">\n");
      out.write("                        <dt>실시간 급상승 검색어</dt>\n");
      out.write("                        <dd>\n");
      out.write("                            <ol id=\"rank\" style=\"padding-left : 10px;\">\n");
      out.write("                                <li><a href=\"#\">1. </a></li>\n");
      out.write("                                <li><a href=\"#\">2. </a></li>\n");
      out.write("                                <li><a href=\"#\">3. </a></li>\n");
      out.write("                                <li><a href=\"#\">4. </a></li>\n");
      out.write("                                <li><a href=\"#\">5. </a></li>\n");
      out.write("                                <li><a href=\"#\">6. </a></li>\n");
      out.write("                                <li><a href=\"#\">7. </a></li>\n");
      out.write("                                <li><a href=\"#\">8. </a></li>\n");
      out.write("                                <li><a href=\"#\">9. </a></li>\n");
      out.write("                                <li><a href=\"#\">10. </a></li>\n");
      out.write("                            </ol>\n");
      out.write("                        \n");
      out.write("                        </dd>\n");
      out.write("                    </dl>\n");
      out.write("                    <div id =\"content11\" class=\"dropdown-content \" style=\"z-index: 2; \">\n");
      out.write("                        <div id =\"rank-list1\" class=\" me-sm-3\">\n");
      out.write("                        <ol style=\"list-style-type: none\" id= \"rank1\" >\n");
      out.write("                                    <li><a href=\"#\">1. </a></li>\n");
      out.write("                                    <li><a href=\"#\">2. </a></li>\n");
      out.write("                                    <li><a href=\"#\">3. </a></li>\n");
      out.write("                                    <li><a href=\"#\">4. </a></li>\n");
      out.write("                                    <li><a href=\"#\">5. </a></li>\n");
      out.write("                                    <li><a href=\"#\">6. </a></li>\n");
      out.write("                                    <li><a href=\"#\">7. </a></li>\n");
      out.write("                                    <li><a href=\"#\">8. </a></li>\n");
      out.write("                                    <li><a href=\"#\">9. </a></li>\n");
      out.write("                                    <li><a href=\"#\">10. </a></li>\n");
      out.write("                                </ol>\n");
      out.write("                                </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <li><div >\n");
      out.write("         				\n");
      out.write("				         ");

				if(userID == null){
					
      out.write("\n");
      out.write("				         <li class=\"nav-item \"><a class=\" btn btn-outline-light me-sm-3\" href=\"login.html\">Login</a></li>\n");
      out.write("				         <li class=\"nav-item\"><a class=\" btn btn-outline-light me-sm-3\" href=\"signUp.html\">Sign Up</a></li>\n");
      out.write("				         ");
}
				         else{
				         
      out.write("\n");
      out.write("				         <li style=\"padding-right:30px;\"><a style=\"color:white;\"><h3>Welcome ");
      out.print(userID );
      out.write("</h3></a></li>\n");
      out.write("				         <li class=\"nav-item\"><a class=\" btn btn-outline-light me-sm-3\" href=\"logoutAction.jsp\">Log Out</a></li>\n");
      out.write("				         ");
}
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div></li> \n");
      out.write("             </ul>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("</nav>\n");
      out.write("<center>\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"swiper-container\">\n");
      out.write("      <div class=\"swiper-wrapper\">\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header avengersEndgame\" style=\"margin-left:12px;\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Avengers: Endgame</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>8.8</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Sun 8 Sept - 10:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 09min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header hobbsShaw\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Hobbs & Shaw</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>9.7</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Tue 4 July - 05:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 13min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header Johnwick\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">John Wick 3</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>9.8</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Wed 16 Aug - 07:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 33min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header deadPool\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Deadpool 2</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>7.3</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Mon 16 Oct - 10:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 0min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header theLionking\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">The Lion King</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>8.1</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Sun 8 Sept - 10:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 36min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header madMax\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Mad Max: Fury Road</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>7.4</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Tue 8 July - 05:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 19min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header aquaMan\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Aquaman</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>8.1</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Wed 16 Aug - 07:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 14min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Movie Card End -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"swiper-slide\">\n");
      out.write("          <!-- Movie Card Start -->\n");
      out.write("          <div class=\"card-view\">\n");
      out.write("            <div class=\"card-header missionImpossible\"></div>\n");
      out.write("            <div class=\"card-movie-content\">\n");
      out.write("              <div class=\"card-movie-content-head\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <h3 class=\"card-movie-title\">Mission Impossible</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"ratings\"><span>7.8</span>/10</div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-movie-info\">\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Last update</label>\n");
      out.write("                  <span>Mon 16 Oct - 10:00PM</span>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"movie-running-time\">\n");
      out.write("                  <label>Running time</label>\n");
      out.write("                  <span>2hr 33min</span>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <!-- ë¤ë¹ê²ì´ì -->\n");
      out.write("        <div class=\"swiper-button-next\"></div> <!-- ë¤ì ë²í¼ (ì¤ë¥¸ìª½ì ìë ë²í¼)-->\n");
      out.write("        <div class=\"swiper-button-prev\"></div> <!-- ì´ì  ë²í¼-->\n");
      out.write("\n");
      out.write("        <!-- íì´ì§ -->\n");
      out.write("        <div class=\"swiper-pagination\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div> \n");
      out.write("  \n");
      out.write(" </center>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js\"></script>\n");
      out.write("  <script src=\"js/now_playing.js\"></script>\n");
      out.write("</body>\n");
      out.write("<!-- Bootstrap core JS-->\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<!-- Core theme JS-->\n");
      out.write("<script src=\"https://code.jquery.com/jquery-1.11.3.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"js/scripts2.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js\"></script>\n");
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