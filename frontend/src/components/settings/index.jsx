import axios from "axios";
import classes from "./settings.module.css";
import Nav from "../nav";

const index = () => {
  axios
    .post("http://localhost:8000/api/checkAuthStatus", {
      Cookie: document.cookie.split("=")[1],
    })
    .then((response) => {
      console.log(response.data);
    })
    .catch((error) => {
      console.error("Error:", error);
    });

  return (
    <div className={classes.container}>
      <Nav />
      <div>
        <div>
          <h2>Profile</h2>
          <button>Edit</button>
          <p>Some info may be visible to other people</p>
        </div>
        <div>
          <h4>Photo</h4>
          <img src="./user.jpg" alt="user" />
        </div>
        <div>
          <h4>Name</h4>
          <h3>Xanthe Neal</h3>
        </div>
        <div>
          <h4>Bio</h4>
          <h3>I am a software developer and a big fan of devchallenges...</h3>
        </div>
        <div>
          <h4>PHONE</h4>
          <h3>908249274292</h3>
        </div>
        <div>
          <h4>EMAIL</h4>
          <h3>xanthe.neal@gmail.com</h3>
        </div>
        <div>
          <h4>PASSWORD</h4>
          <h3>************</h3>
        </div>
      </div>
    </div>
  );
};

export default index;
