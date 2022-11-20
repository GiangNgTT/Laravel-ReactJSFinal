import { useEffect, useState } from "react";
import axios from "axios";
import "../assets/css/qa.css";

function QuestionAnswer() {
  const [qaState, setQaState] = useState({ data: [], loading: false });

  useEffect(() => {
    axios.get("http://localhost:8000/api/q_a/").then((res) => {
      if (res.data) {
        setQaState((s) => ({ ...s, data: res.data }));
      } else {
        setQaState((s) => ({ ...s, loading: true }));
      }
    });
  }, []);

  return (
    <>
      <div className="grid-container">
        {qaState.data.map((qa) => (
          <div className="qa">
            <img src={qa.image} alt="hinhanh" />
            <h4>{qa.title}</h4>
            <p>{qa.content}</p>
          </div>
        ))}
      </div>
    </>    
  );
}
export default QuestionAnswer;