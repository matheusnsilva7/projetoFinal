import axios from "axios";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  return (
    <div className={classes.container}>
      <Nav />
      <div className={classes.mainContainer}>
        <div>
          <h1>Overview</h1>
        </div>
      </div>
    </div>
  );
};

export default index;
