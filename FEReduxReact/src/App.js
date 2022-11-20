// import logo from './logo.svg';
import React, { Component }  from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Content from './pages/Content';

import BatteryReplacePage from './pages/BatteryReplacePage';
import CaseReplacePage from './pages/CaseReplacePage';
import ScreenReplacePage from './pages/ScreenReplacePage';
import HardwareReplacePage from './pages/HardwareReplacePage';

import BatteryReplaceDetail from './pages/BatteryReplaceDetail';
import ScreenReplaceDetail from './pages/ScreenReplaceDetail';
import CaseReplaceDetail from './pages/CaseReplaceDetail';
import HardwareReplaceDetail from './pages/HardwareReplaceDetail';
import AboutUs from './pages/AboutUs';
import Slide from './components/Slide';
import MainReplacePage from './pages/MainReplacePage';
import MainReplaceDetail from './pages/MainReplaceDetail';
import FormBooking from './pages/FormBooking';
import Banner from './components/Banner';
import Call from './components/Call';
import "./assets/css/product.css";
import "./assets/css/index.css";

import Header from "./components/Header";
import Footer from "./components/Footer";
import NewsMain from './pages/NewsMain';

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Content />} />
        <Route path="/Slide" element={<Slide />} />
        <Route path="/BatteryReplace" element={<BatteryReplacePage />} />
        <Route path="/CaseReplace" element={<CaseReplacePage />} />
        <Route path="/ScreenReplace" element={<ScreenReplacePage />} />
        <Route path="/HardwareReplace" element={<HardwareReplacePage />} />
        <Route path="/MainReplace" element={<MainReplacePage />} />
        <Route
          path="/BatteryReplaceDetail/:id"
          element={<BatteryReplaceDetail />}
        />
        <Route path="/CaseReplaceDetail/:id" element={<CaseReplaceDetail />} />
        <Route
          path="/ScreenReplaceDetail/:id"
          element={<ScreenReplaceDetail />}
        />
        <Route
          path="/HardwareReplaceDetail/:id"
          element={<HardwareReplaceDetail />}
        />
        <Route
          path="/MainReplaceDetail/:id"
          element={<MainReplaceDetail />}
        />
        <Route path="/AboutUs" element={<AboutUs />} />
        <Route path="/Banner" element={<Banner />} />
        <Route path="/FormBooking" element={<FormBooking />} />
        <Route path="/Call" element={<Call />} />
        <Route path="/NewsMain" element={<NewsMain />} />
      </Routes>
      <Footer />
    </>
  );
}

export default App;