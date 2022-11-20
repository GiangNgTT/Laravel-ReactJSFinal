import React, { useState, useEffect } from "react";
import '.././assets/css/CKeditor.css'
import CKeditor from "./CKeditor";

export default function NewsMain() {
  const [editorLoaded, setEditorLoaded] = useState(false);
  const [data, setData] = useState("");

  useEffect(() => {
    setEditorLoaded(true);
  }, []);

  return (
    <div className="App">
      <h1>ckEditor 5</h1>

      <CKeditor
        name="description"
        onChange={(data) => {
          setData(data);
        }}
        editorLoaded={editorLoaded}
      />

      {JSON.stringify(data)}
    </div>
  );
}
