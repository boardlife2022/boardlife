package action;

import vo.ActionForward;
import vo.Boardgames2;

import java.io.PrintWriter;

import javax.print.DocFlavor.STRING;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Info_InsertService;

public class Info_InsertAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		Boardgames2 boardgame = null;
		String realFolder="";
		String saveFolder="/boardUpload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		boardgame = new Boardgames2();
		boardgame.setB_img(
				multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		boardgame.setB_id(multi.getParameter("b_id"));
		boardgame.setB_title_kor(multi.getParameter("b_title_kor"));
		boardgame.setB_title_eng(multi.getParameter("b_title_eng"));
		boardgame.setYearof(multi.getParameter("yearof"));
		boardgame.setPnum(multi.getParameter("pnum"));
		boardgame.setRunning_time(multi.getParameter("running_time"));
		boardgame.setAge(multi.getParameter("age"));
//		boardgame.double(setGame_level(multi.getParameter("game_level")));
		boardgame.setSub_lang(multi.getParameter("sub_lang"));
		boardgame.setB_detail(multi.getParameter("b_detail"));
		
		Info_InsertService infoinsertsvc = new Info_InsertService();
		boolean isWriteSuccess = infoinsertsvc.registArticle(boardgame);
		System.out.println(isWriteSuccess);
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("boardList.bo");
		}

		return forward;
		
	} 	
	
}