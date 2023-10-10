import axios from "axios";
import classes from "./index.module.css";

const index = () => {
  const formHandler = (e) => {
    e.preventDefault();

    axios
      .post("http://localhost:8000/api/register", {
        name: e.target[0].value,
        email: e.target[1].value,
        password: e.target[2].value,
        password_confirmation: e.target[3].value,
      })
      .then((response) => {
        document.cookie = `user=${response.data.user_id}; path=/`;
        if (response.statusText === "OK") {
          window.location.href = "/overview";
        }
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  return (
    <div className={classes.container}>
      <div className={classes.mainContainer}>
        <h1>Join thousands of learners from around the world</h1>
        <p>
          Master web development by making real-life projects. There are
          multiple paths for you to choose
        </p>
        <form onSubmit={formHandler}>
          <input
            type="text"
            id="name"
            name="name"
            placeholder="Name"
            className={classes.input}
            required
          />
          <label htmlFor="email">
            <span className="material-symbols-outlined">mail</span>
            <input type="text" name="email" placeholder="Email" id="email" />
          </label>
          <label htmlFor="password">
            <span className="material-symbols-outlined">lock</span>
            <input
              type="password"
              name="password"
              placeholder="Password"
              id="password"
            />
          </label>
          <input
            type="password"
            id="password_confirmation"
            name="password_confirmation"
            placeholder="Password confirmation"
            className={classes.input}
            required
          />
          <button>create</button>
        </form>
        <p>or continue with these social profile</p>
        <div className={classes.socialMedia}>
          <a href="#">
            <span className="material-symbols-outlined">public</span>
          </a>
          <a href="#">
            <span className="material-symbols-outlined">public</span>
          </a>
          <a href="#">
            <span className="material-symbols-outlined">public</span>
          </a>
          <a href="#">
            <span className="material-symbols-outlined">public</span>
          </a>
        </div>
        <p>
          Adready a member? <a href="/">Login</a>
        </p>
      </div>
    </div>
  );
};

export default index;
