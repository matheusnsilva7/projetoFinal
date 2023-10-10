import axios from "axios";
import { useState, useEffect } from "react";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  const [data, setData] = useState([]);
  const [form, setForm] = useState(false);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get("http://localhost:8000/api/links");
      setData(response.data);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    }
  };

  const createLink = async (e) => {
    try {
      e.preventDefault();
      await axios.post(
        "http://localhost:8000/api/links",
        Object.fromEntries(new FormData(e.target))
      );
      e.target.reset();
      setForm(false);
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  return (
    <div className={classes.container}>
      <Nav />
      <div className={classes.mainContainer}>
        <div>
          <h1>Roles</h1>
          <button onClick={() => setForm(true)}>new link</button>
          <table className={classes.table}>
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Role</th>
                <th>Description</th>
                <th>User Creation</th>
                <th>User Modification</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {data
                ? data.map((e, i) => {
                    return (
                      <tr key={i}>
                        <td>{e.id}</td>
                        <td>{e.page ? e.page.name : "not defined"}</td>
                        <td>{e.role ? e.role.role : "not defined"}</td>
                        <td>{e.description ? e.description : "not defined"}</td>
                        <td>
                          {e.user_creation ? e.user_creation : "not defined"}
                        </td>
                        <td>
                          {e.user_modification
                            ? e.user_modification
                            : "not defined"}
                        </td>
                        <td id={e.id} className={classes.blue}>
                          <span className="material-symbols-outlined">
                            settings
                          </span>
                        </td>
                      </tr>
                    );
                  })
                : "no logs found"}
            </tbody>
          </table>
        </div>
      </div>
      {form && (
        <div className={classes.formContainer}>
          <div onClick={() => setForm(false)}></div>
          <form onSubmit={createLink}>
            <h3>New Link</h3>
            <label htmlFor="pageid">Page ID:</label>
            <input type="number" name="pageid" id="pageid" required />
            <br />

            <label htmlFor="idrol">Role ID:</label>
            <input type="number" name="idrol" id="idrol" required />
            <br />

            <label htmlFor="description">Description:</label>
            <input type="text" name="description" id="description" required />
            <br />

            <label htmlFor="user_creation">User Creation:</label>
            <input
              type="number"
              name="user_creation"
              id="user_creation"
              required
            />
            <br />

            <label htmlFor="user_modification">User Modification:</label>
            <input
              type="number"
              name="user_modification"
              id="user_modification"
              required
            />
            <br />

            <input type="submit" value="Submit" />
          </form>
        </div>
      )}
    </div>
  );
};

export default index;
