package com.project.trip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.IMemberMapper;
import com.project.trip.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class IMemberController {
	@Autowired
	IMemberMapper mapper;

	@GetMapping("/regMember")
	public void regMember1() {

	}

	@PostMapping("/regMember")
	public String regMember(MemberVO mv) {
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		if(mv.getEmail_check()==null) {
			mv.setEmail_check("No");
		}
		mapper.insertMember(mv);

		return "redirect:/";
	}

	@GetMapping("/idOverCheck")
	public @ResponseBody String idCheck(String id, Model model) {
		String message = "";
		int result = 0;
		result = mapper.idOverCheck(id);
		if (result == 1) {
			message = "<span style='color:red';>사용불가</span>";
			model.addAttribute("message", message);
		} else {
			message = "<span style='color:green';>사용가능</span>";
			model.addAttribute("message", message);
		}
		return message;
	}

	@GetMapping("login")
	public void login() {

	}

	@PostMapping("login.do")
	public @ResponseBody String loginCheck(String id, String pw, HttpServletRequest request) {
		int result = mapper.login(id, pw);
		HttpSession session = request.getSession();
		String out = "";

		if (result == 1) {
			out = "<script>alert('" + id + "님 로그인 성공!');location.href='/';</script>";
			session.setAttribute("id", id);
		} else {
			out = "<script>alert('아이디 비밀번호를 확인해주세요');location.href='login';</script>";
		}

		return out;
	}

	@GetMapping("logout.do")
	public @ResponseBody String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		String out = "<script>alert('로그아웃!');location.href='/';</script>";
		return out;
	}

	@GetMapping("/header")
	public void header() {

	}

	@GetMapping("/openlogin.do")
	public @ResponseBody String openlogin() {
		String out = "<form action=\"login.do\" method=\"post\" name=\"frm\" id=\"form\">\r\n" + "<table>\r\n"
				+ "	<tr>\r\n"
				+ "		<td><input type=\"text\" name=\"id\" id=\"input\" placeholder=\"아이디 입력\"></td>\r\n"
				+ "	</tr>\r\n" + "	<tr>\r\n" + "		\r\n"
				+ "		<td><input type=\"password\" name=\"pw\" id=\"input\" placeholder=\"비밀번호 입력\"></td>\r\n"
				+ "	</tr>\r\n"
				+ "	<td><input type=\"submit\" value=\"로그인\" onclick=\"return check()\" id=\"submit\"></td>\r\n"
				+ "	\r\n" + "\r\n" + "</table>\r\n" + "<hr>\r\n"
				+ "	<div id=\"find\" style=border:1px;hegith:50px;width:500px>\r\n"
				+ "		<a href=\"\"> 아이디 찾기 |</a>\r\n" + "		<a href=\"\"> 비밀번호 찾기 | </a>\r\n"
				+ "		<a href=\"regMember\"> 회원가입</a>\r\n" + "	</div>\r\n" + "</form>";

		return out;
	}

	@GetMapping("/nonlogin.do")
	public @ResponseBody String nonlogin() {
		String out = "<form action=\"\" method=\"post\" name=\"frm\">\r\n" + "<table>\r\n" + "	<tr>\r\n"
				+ "		<td><input type=\"text\" name=\"res_no\" id=\"input\" placeholder=\"예약번호 입력\"></td>\r\n"
				+ "	</tr>\r\n" + "	<tr>\r\n" + "		\r\n"
				+ "		<td><input type=\"password\" name=\"prod_no\" id=\"input\" placeholder=\"상품번호 입력\"></td>\r\n"
				+ "	</tr>\r\n"
				+ "	<td><input type=\"submit\" value=\"예약조회하기\" onclick=\"return check()\" id=\"submit\"></td>\r\n"
				+ "</table>\r\n" + "<hr>\r\n" + "	<div id=\"find\" style=border:1px;hegith:50px;width:500px>\r\n"
				+ "		<a href=\"\">아이디 찾기 | </a>\r\n" + "		<a href=\"\">비밀번호 찾기 | </a>\r\n"
				+ "		<a href=\"regMember\">회원가입</a>\r\n" + "	</div>\r\n" + "</form>";

		return out;
	}

	@GetMapping("/idPop")
	public @ResponseBody String idPop() {
		String out = "<form action=\"findId\" method=\"post\" name=\"frm1\" id=\"form\">\r\n" + "\r\n"
				+ "		<input type=\"text\" name=\"name\" id=\"input\" placeholder=\"이름을 입력해주세요\">\r\n" + "\r\n"
				+ "		<input type=\"text\" name=\"tel\" id=\"input\" placeholder=\"-없이 전화번호 입력해주세요\">\r\n" + "\r\n"
				+ "	<input type=\"submit\" value=\"아이디찾기\" onclick=\"return idCheck()\" id=\"input\">\r\n" + "</form>";

		return out;
	}

	@GetMapping("/findId")
	public void findId1() {

	}

	@PostMapping("/findId")
	public String findId2(@Param("fname") String name, @Param("ftel") String tel, Model model) {

		String id = mapper.findId(name, tel);
		model.addAttribute("id", id);

		return "findId";
	}

	@GetMapping("/findPw")
	public  void findPw1() {
		
	}


	@PostMapping("/findPw")
	public String findPw2(MemberVO mv, Model model) {
		String view="findPw";
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		String pw = mapper.findPw(mv.getId(), mv.getEmail());

		model.addAttribute("pw", pw);


		return view;
	}
}
