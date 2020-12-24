package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MainController {
@RequestMapping("/Home")
public String index(){
	return "index";
}
@RequestMapping("/GioiThieu")
public String gioithieu(){
	return "GioiThieu";
}
@RequestMapping("/HeThongCuaHang")
public String hethongcuahang(){
	return "HeThongCuaHang";
}
@RequestMapping("/TinTuc")
public String tintuc(){
	return "TinTuc";
}
@RequestMapping("/KhuyenMai")
public String khuyenmai(){
	return "KhuyenMai";
}
@RequestMapping("/XuHuong")
public String xuhuong(){
	return "XuHuong";
}
@RequestMapping("/BoSuuTapMoi")
public String bosuutapmoi(){
	return "BoSuuTapMoi";
}
@RequestMapping("/Summer19")
public String summer19(){
	return "Summer19";
}
@RequestMapping("/TheSimpleLife")
public String thesimplelife(){
	return "TheSimpleLife";
}
@RequestMapping("/FallWinter")
public String fallwinter(){
	return "FallWinter";
}
@RequestMapping("/TheNewBeginningTogether")
public String thenewbeginningtogether(){
	return "TheNewBeginningTogether";
}
@RequestMapping("/AutumnCollection2019")
public String autumncollection2019(){
	return "AutumnCollection2019";
}

@RequestMapping("/ChinhSachQuyDinh")
public String chinhsachquydinh(){
	return "ChinhSachQuyDinh";
}
@RequestMapping("/ChinhSachDoiTra")
public String chinhsachdoitra(){
	return "ChinhSachDoiTra";
}
@RequestMapping("/ChinhSachBaoMat")
public String chinhsachbaomat(){
	return "ChinhSachBaoMat";
}
@RequestMapping("/ChinhSachVanChuyen")
public String chinhsachvanchuyen(){
	return "ChinhSachVanChuyen";
}
@RequestMapping("/ChinhSachBaoHanh")
public String chinhsachbaohanh(){
	return "ChinhSachBaoHanh";
}

}
