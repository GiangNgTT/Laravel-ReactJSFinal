import React from "react";

export default function Banner() {
  return (
    <div>
        <div className="question"><h5>Thiết bị nào của bạn đang gặp vấn đề?</h5></div>
      <div className="banner">
        <div className="banner_item">
          <img src="https://huydungmobile.com/wp-content/uploads/2021/03/iphone.jpg"></img>
        </div>
        <div className="banner_item">
          <img src="https://huydungmobile.com/wp-content/uploads/2021/03/samsung.jpg"></img>
        </div>
        <div className="banner_item">
          <img src="https://huydungmobile.com/wp-content/uploads/2021/03/xiaomi.jpg"></img>
        </div>
        <div className="banner_item">
          <img src="https://huydungmobile.com/wp-content/uploads/2021/03/oppo.jpg"></img>
        </div>
      </div>
    </div>
  );
}
