import React from "react"; 
import{ useState } from "react";
import axios from "axios";
import "../assets/css/FormBooking.css";

const BookingSerive = () => {
  const [phone_name, setPhoneName] = useState("");
  const [type_device, setTypeDevice] = useState("");
  const [service_name, setServiceName] = useState("");
  const [phone_emei, setPhoneEmei] = useState("");
  const [model, setModel] = useState("");
  const [note, setNote] = useState("");
  const [repair_day, setRepairDay] = useState("");
  const [received_day, setReceivedDay] = useState("");
  const [cus_name, setCusName] = useState("");
  const [cusphone_number, setCusPhone] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();
    const postData = {
        service_name,
        type_device,
        cus_name,
        phone_name,
        phone_emei,
        model,
        note,
        repair_day,
        received_day,
        cusphone_number
    }
    axios
      .post(`http://localhost:8000/api/customers`, postData)
      .then((res) => {
        console.log(res);
      })
      .catch((err) => {
        console.log(err);
      });

    alert(`Bạn đã gửi yêu cầu thành công!`);
  };
  return (
    <>
      <div className="container-fluid">
        <form onSubmit={handleSubmit}>
          <span className="tile_booking">THÔNG TIN SỬA CHỮA</span>
          <div className="form-group">
            <label className="phone_name" htmlFor="phone_name">Nhập tên thiết bị: </label>
            <input
              type="text"
              className="form-control"
              id="phoneName"
              name="phone_name"
              value={phone_name}
              onChange={(e) => setPhoneName(e.target.value)}
            />
          </div>
          <div className="flex_contain"></div>
          <div className="form__info-phone">
            <div className="form__info__service">
              <div className="service__label">
                <label htmlFor="service_name">Dịch vụ thay thế:</label>
                <label htmlFor="phone_mei">Số IMEI: </label>
                <label htmlFor="model">Model: </label>
                <label htmlFor="note">Ghi chú: </label>
              </div>
              <div className="service__input">
                <select
                  value={service_name}
                  onChange={(e) => setServiceName(e.target.value)}
                >
                  <option>Thay màn hình</option>
                  <option>Thay Pin</option>
                  <option>Thay Phần cứng</option>
                  <option>Thay Vỏ</option>
                </select>
                <input
                  type="text"
                  value={phone_emei}
                  onChange={(e) => setPhoneEmei(e.target.value)}
                ></input>
                <input
                  type="text"
                  value={model}
                  onChange={(e) => setModel(e.target.value)}
                ></input>
                <input
                  type="text"
                  value={note}
                  onChange={(e) => setNote(e.target.value)}
                ></input>
              </div>
            </div>
            <div className="form__info__customer">
              <div className="customer__label">
                <label htmlFor="repair_day">Ngày nhận máy:</label>
                <label htmlFor="received_day">Ngày hẹn trả khách:</label>
                <label htmlFor="cus_name">Tên khách hàng:</label>
                <label htmlFor="cusphone_number ">Số điện thoại:</label>
              </div>
              <div className="customer__input">
                <input
                  type="date"
                  value={repair_day}
                  onChange={(e) => setRepairDay(e.target.value)}
                ></input>
                <input
                  type="date"
                  value={received_day}
                  onChange={(e) => setReceivedDay(e.target.value)}
                ></input>
                <input
                  type="text"
                  value={cus_name}
                  onChange={(e) => setCusName(e.target.value)}
                ></input>
                <input
                  type="text"
                  value={cusphone_number}
                  onChange={(e) => setCusPhone(e.target.value)}
                ></input>
              </div>
            </div>
          </div>

          <button type="submit" className="btn btn--yellow">
            Gửi yêu cầu
          </button>
        </form>
      </div>
    </>
  );
};

export default BookingSerive;