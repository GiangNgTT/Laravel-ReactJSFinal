import React, { Component } from "react";
import axios from "axios";
import Header from "../components/Header";
import Footer from "../components/Footer";
import { useParams } from "react-router-dom";

class CaseReplaceDetail extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isLoad: false,
      prodetail: {},
    };
  }
  async componentDidMount() {
    const { params } = this.props;
    await axios
      .get(`http://127.0.0.1:8000/api/products/${params.id}`)
      .then((res) => {
        console.log(params.id);
        this.setState(() => ({ prodetail: res.data, isLoad: true }));
      });
  }
  render() {
    return (
      <div>

        <div className="ScreenDetail">
          <div className="ScreenDetail_item">
            <nav className="linking">
              <a className="Itemlinking" href="http://localhost:3000/">
                Trang chủ
              </a>        
              <span className="divider">/</span>
              <a href="#" className="linItemlinkingking">
                Thay pin
              </a>
              <span className="divider">/</span>
              <a href="#" className="Itemlinking">
                Chi tiết thay vỏ
              </a>
            </nav>
            <br></br>
            <div></div>
            {this.state.isLoad ? (
              <div className="productDetail">
                <div className="proDetail">
                  <div className="flex-center">
                    <img
                      className="image-wrapper image-wrapper--detail"
                      src={this.state.prodetail.img}
                      alt="file"
                    ></img>
                  </div>
                  <div className="info">
                    <p className="name-wrapper--detail">
                      {this.state.prodetail.product_name}
                    </p>

                    <div>
                      <span className="price-wrapper">
                        {this.state.prodetail.price} VND
                      </span>
                    </div>
                    <div className="flex-center">
                      <p className="des-wrapper">
                        {this.state.prodetail.description}
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            ) : (
              "loading..."
            )}

            <hr></hr>
            <div className="note">
              <p className="note__title">
                <b>
                  Giá bao gồm công thay và bảo hành, phát sinh thêm chi phí nào
                  khác
                </b>
              </p>
            </div>

            <div className="detail_service">
              <b>Chi tiết dịch vụ:</b>
              <br></br>
              <br></br>

              <div className="detail_item1">
                <p>
                  <i class="fas fa-check"></i>Thời gian đổi vỏ
                </p>
                <p>
                  <i class="star fas fa-star"></i>60 phút
                </p>
              </div>
              <div className="detail_item2">
                <p>
                  <i class="fas fa-check"></i>Quy trình thay
                </p>
                <p>
                  <i class="star fas fa-star"></i>Thay trực tiếp
                </p>
              </div>
              <div className="detail_item1">
                <p>
                  <i class="fas fa-check"></i>Tình trạng vỏ
                </p>
                <p>
                  <i class="star fas fa-star"></i>mới 100%
                </p>
              </div>
              <div className="detail_item2">
                <p>
                  <i class="fas fa-check"></i>Quy trình thay
                </p>
                <p>
                  <i class="star fas fa-star"></i>12 tháng
                </p>
              </div>
            </div>
            <br></br>
            <br></br>

            <div className="detail_contact">
              <a href="/FormBooking" className="detail_contact_a">
                {" "}
                Liên hệ trực tiếp
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
export default (props) => <CaseReplaceDetail {...props} params={useParams()} />;
