import React,{ Component} from "react";
import Header from "../components/Header";
import Footer from "../components/Footer";
export default class AboutUs extends Component {
    render() {
        return (
            <div>        
                <br></br>
                 <div className="AboutUs">
                    <br></br>
                    <br></br>
                <div className="aboutUs">
                    <p className="title_large">Về chúng tôi</p>
                
                    <br></br>
                    <p className="content">Huy Dũng Mobile được thành lập năm 2006 với cái tên T&T Mobile, khi điện thoại thông minh vẫn còn chưa phổ biến.
                            Đã từng tiết kiệm tiền để mua cho mình chiếc điện thoại yêu thích. Chúng tôi hiểu được nỗi lo lắng của những
                            người trẻ đam mê công nghệ khi luôn phải đề phòng bị “luộc” đồ, nâng giá, hư vặt sau sửa chữa. Chính vì thế,
                            thương hiệu của chúng tôi đã ra đời với sứ mệnh mang lại cho khách hàng những trải nghiệm tuyệt vời về các 
                            dịch vụ sửa chữa điện thoại, máy tính bảng, máy tính xách tay,.. tại Việt Nam. Trung tâm chuyên nhận sửa chữa iPhone, 
                            sửa chữa iPad, sửa chữa samsung,… chi tiết xem tại bảng giá: 
                            sửa chữa điện thoại.
                        </p>
                        <p><img className="image1" src="image/anh.png.webp"></img></p>
                       
                </div>
                <div className="vision">
                    <p className="title_large">Tầm nhìn</p>
                    <p className="content">Trải qua hơn 15 năm thăng trầm, Huy Dũng Mobile đã luôn cố gắng hoàn thiện bản thân mỗi ngày,
                        hòa mình vào thời đại công nghệ thông tin phát triển liên tục.<br></br> Đồng thời, với định hướng trở thành 
                        dịch vụ sửa chữa chuyên nghiệp hàng đầu. Chúng tôi sẽ đem đến cho khách hàng sự hài lòng vượt trội,
                         xứng đáng với niềm tin bạn trao cho chúng tôi. </p>            
                </div>
                <div className="destiny">
                    <p className="title_large">Sứ mệnh</p>
                    <div>
                        <p className="content">Với tinh thần cầu tiến, không ngừng học hỏi và cố gắng, Huy Dũng Mobile luôn lấy khách hàng làm trọng tâm 
                            cho tất cả dịch vụ của mình.<br></br> Phương châm của chúng tôi là “SỰ HÀI LÒNG CỦA QUÝ KHÁCH LÀ TẤT CẢ”</p>
                    
                    </div>
                   
                </div>                  
            </div>
            <br></br>
            </div>
           
        );
    }
}