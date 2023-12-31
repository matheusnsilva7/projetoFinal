import axios from "axios";
import { useState, useEffect } from "react";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  const [data, setData] = useState([]);
  const [form, setForm] = useState(false);
  const [role, setRole] = useState({});

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get("http://localhost:8000/api/roles");
      setData(response.data);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    }
  };

  const update = async (e) => {
    try {
      e.preventDefault();
      await axios.patch(
        `http://localhost:8000/api/roles/${role.id}`,
        Object.fromEntries(new FormData(e.target))
      );
      e.target.reset();
      setForm(false);
      setRole({});
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  const createRole = async (e) => {
    try {
      e.preventDefault();
      await axios.post(
        "http://localhost:8000/api/roles",
        Object.fromEntries(new FormData(e.target))
      );
      e.target.reset();
      setForm(false);
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  const del = async (id) => {
    try {
      await axios.delete(`http://localhost:8000/api/roles/${id}`);
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
          <button onClick={() => setForm(true)}>New Role</button>
          <table className={classes.table}>
            <thead>
              <tr>
                <th>id</th>
                <th>role</th>
                <th>Creation Date</th>
                <th>Modification Date</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {data
                ? data.map((e, i) => {
                    return (
                      <tr key={i}>
                        <td>{e.id}</td>
                        <td>{e.role ? e.role : "not defined"}</td>
                        <td>
                          {e.creation_date ? e.creation_date : "not defined"}
                        </td>
                        <td>
                          {e.modification_date
                            ? e.modification_date
                            : "not defined"}
                        </td>
                        <td className={classes.td}>
                          <span
                            id={e.id}
                            className={`material-symbols-outlined ${classes.blue}`}
                            onClick={() => {
                              setRole(e);
                              setForm(true);
                            }}
                          >
                            settings
                          </span>
                          <span
                            className={`material-symbols-outlined ${classes.red}`}
                            onClick={() => del(e.id)}
                          >
                            delete
                          </span>
                        </td>
                      </tr>
                    );
                  })
                : "no roles"}
            </tbody>
          </table>
        </div>
      </div>
      {form && (
        <div className={classes.formContainer}>
          <div
            onClick={() => {
              setForm(false);
              setRole({});
            }}
          ></div>
          <form onSubmit={role.id ? update : createRole}>
            <label htmlFor="role">Role:</label>
            <input
              type="text"
              name="role"
              id="role"
              value={role.role ? role.role : ""}
              onChange={(e) =>
                setRole((i) => {
                  return { ...i, role: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="user_creation">User Creation:</label>
            <input
              type="number"
              name="user_creation"
              id="user_creation"
              value={role.user_creation ? role.user_creation : ""}
              onChange={(e) =>
                setRole((i) => {
                  return { ...i, user_creation: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="user_modification">User Modification:</label>
            <input
              type="number"
              name="user_modification"
              id="user_modification"
              value={role.user_modification ? role.user_modification : ""}
              onChange={(e) =>
                setRole((i) => {
                  return { ...i, user_modificantion: e.target.value };
                })
              }
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
