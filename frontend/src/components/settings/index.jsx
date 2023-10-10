import axios from "axios";
import classes from "./settings.module.css";
import Nav from "../nav";
import { useEffect, useState } from "react";

const index = () => {
  const [data, setData] = useState({});

  useEffect(() => {
    fetchData();
  }, []);

  function getCookie(cookieName) {
    const cookies = document.cookie.split("; ");
    for (const cookie of cookies) {
      const [name, value] = cookie.split("=");
      if (name === cookieName) {
        return decodeURIComponent(value);
      }
    }
    return null;
  }

  const myCookieValue = getCookie("user");

  const fetchData = async () => {
    try {
      const response = await axios.get(
        `http://localhost:8000/api/users/${myCookieValue}`
      );
      setData(response.data);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
      window.location.href = "/";
    }
  };

  const update = async (e) => {
    try {
      e.preventDefault();
      await axios.patch(
        `http://localhost:8000/api/users/${myCookieValue}`,
        data
      );
      e.target.reset();
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  return (
    <div className={classes.container}>
      <Nav />
      <div className={classes.form}>
        <form onSubmit={update}>
          <label htmlFor="name">Name:</label>
          <input
            type="text"
            id="name"
            name="name"
            value={data.name ? data.name : ""}
            onChange={(e) =>
              setData((i) => {
                return { ...i, name: e.target.value };
              })
            }
            required
          />

          <label htmlFor="email">Email:</label>
          <input
            type="email"
            id="email"
            name="email"
            value={data.email ? data.email : ""}
            onChange={(e) =>
              setData((i) => {
                return { ...i, email: e.target.value };
              })
            }
            required
          />

          <label htmlFor="password">Password:</label>
          <input type="password" id="password" name="password" />

          <label htmlFor="password_confirmation">Confirm Password:</label>
          <input
            type="password"
            id="password_confirmation"
            name="password_confirmation"
          />

          <button type="submit">Register</button>
        </form>
      </div>
    </div>
  );
};

export default index;
