/* 주제: 파일 업로드 처리4
 * => 배치 폰더가 아닌 임의 폴더에 파일저장.
 * => 이미지 다운로드는 다운로드 서블릿 URL로 지정한다
 */
package bitcamp.servlet11;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    //web.xml에서 설정된 초기화 파라미터 값 가져오기
    System.out.println("MyServlet");
    System.out.printf("name=%s\n", this.getInitParameter("name"));
    System.out.printf("age=%s\n", this.getInitParameter("age"));
    
    ServletConfig config = this.getServletConfig();
    System.out.printf("name=%s\n", config.getInitParameter("name"));
    System.out.printf("age=%s\n", config.getInitParameter("age"));
    
    ServletContext context = this.getServletContext();
    System.out.printf("name=%s\n", context.getInitParameter("name"));
    System.out.printf("age=%s\n", context.getInitParameter("age"));
  }
}
