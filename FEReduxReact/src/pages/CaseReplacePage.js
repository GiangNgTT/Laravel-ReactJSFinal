import React, { Component } from "react";
import axios from "axios";
import Header from "../components/Header";
import Footer from "../components/Footer";

export default class CaseReplacePage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      case: [],
    };
  }
  async componentDidMount() {
    await axios.get(`http://127.0.0.1:8000/api/service/3`).then((res) => {
      this.setState(() => ({ case: res.data }));
    });
    console.log("test");
  }
  render() {
    return (
      <div>
       
        <div className="Content">
          <nav className="linking">
            <a className="Itemlinking" href="http://localhost:3000/">
              Trang chủ
            </a>
            <span className="divider">/</span>
            <a className="Itemlinking" href="#">
              Thay vỏ
            </a>
          </nav>
          <div></div>
          <br></br>
          <div className="container">
            {this.state.case.map((products, index) => (
              <a href={`/CaseReplaceDetail/${products.id}`}>
                <div className="prd" key={index}>
                  <img
                    className="image-wrapper"
                    src={products.img}
                    alt="file"
                  ></img>
                  <p className="name-wrapper">{products.product_name}</p>
                  <div>
                    <span className="price-wrapper">{products.price}VND</span>
                  </div>
                </div>
              </a>
            ))}
          </div>
          <br></br>
        </div>
      </div>
    );
  }
}
