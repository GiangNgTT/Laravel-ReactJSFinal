import React from "react";

export default function Call() {
  return (
    <div>
      <div className="call__btn">
        <a href="tel:0878647655" id="popup__toggle" onclick="return true;">
          <div className="circlephone" style={{ transformOrigin: "center" }} />
          <div className="circle-fill" style={{ transformOrigin: "center" }} />
          <div className="img-circle" style={{ transformOrigin: "center" }}>
            <div
              className="img-circleblock"
              style={{ transformOrigin: "center" }}
            />
          </div>
        </a>
      </div>
      <a href="#" id="popup__toggle" onclick="return true;"></a>
    </div>
  );
}
