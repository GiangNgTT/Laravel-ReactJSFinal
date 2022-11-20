import React, { Component } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import Header from "../components/Header";
import Footer from "../components/Footer";
import Call from "../components/Call";
import Banner from "../components/Banner";
import Slide from "../components/Slide";

const ProductList = ({ title, list }) => {
  return (
    <div className="product-list">
      <h2 className="title-content">{title}</h2>
      <br></br>
      <div className="container">
        {list.map((product, index) => {
          var cate = "";
          switch (product.service_id) {
            case 2:
              cate = "ScreenReplaceDetail";
              break;
            case 3:
              cate = "BatteryReplaceDetail";
              break;
            case 4:
              cate = "HardwareReplaceDetail";
              break;
            default:
              cate = "CaseReplaceDetail";
          }
          return (
            <div className="prd" key={index}>
              <Link to={`/${cate}/${product.id}`}>
                <img
                  className="prd-img"
                  style={{ width: "200px", height: "200px" }}
                  src={product.img}
                  alt="file"
                ></img>
                <p className="prd-name">{product.product_name}</p>
                <div>
                  <span className="prd-price">{product.price} VND</span>
                </div>
              </Link>
            </div>
          );
        })}
      </div>
    </div>
  );
};

export default class Content extends Component {
  constructor(props) {
    super(props);
    this.state = {
      products: [],
      services: [],
    };
  }
  async componentDidMount() {
    const services = (await axios.get("http://127.0.0.1:8000/api/services"))
      .data;
    const products = (await axios.get(`http://127.0.0.1:8000/api/products`))
      .data;

    this.setState({ services, products });
  }
  render() {
    console.log(this.state);
    return (
      <div>
<Call>
</Call>
        <div className="contents">
          {this.state.services.map((service) => (
            <ProductList
              title={service.service_name}
              list={this.state.products.filter(
                (product) => product.service_id === service.id
              )}
            />
          ))}
        </div>

      </div>
    );
  }
}