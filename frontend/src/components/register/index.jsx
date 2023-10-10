import classes from "./index.module.css";

const index = () => {
  const formHandler = (e) => {
    e.preventDefault();

    axios
      .post("http://localhost:8000/api/login", {
        email: e.target[0].value,
        password: e.target[1].value,
      })
      .then((response) => {
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

          <button>Start coding now</button>
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
