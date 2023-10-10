import axios from "axios";
import { useState, useEffect } from "react";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  const [data, setData] = useState([]);
  const [form, setForm] = useState(false);
  const [link, setLink] = useState({});

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

  const update = async (e) => {
    try {
      e.preventDefault();
      await axios.patch(`http://localhost:8000/api/links/${link.id}`, link);
      e.target.reset();
      setForm(false);
      setLink({});
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  const del = async (id) => {
    try {
      await axios.delete(`http://localhost:8000/api/links/${id}`);
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
          <h1>Links</h1>
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
                        <td className={classes.td}>
                          <span
                            id={e.id}
                            className={`material-symbols-outlined ${classes.blue}`}
                            onClick={() => {
                              setLink(e);
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
                : "no logs found"}
            </tbody>
          </table>
        </div>
      </div>
      {form && (
        <div className={classes.formContainer}>
          <div
            onClick={() => {
              setForm(false);
              setLink({});
            }}
          ></div>
          <form onSubmit={link.id ? update : createLink}>
            <h3>New Link</h3>
            <label htmlFor="pageid">Page ID:</label>
            <input
              type="number"
              name="pageid"
              id="pageid"
              value={link.pageid ? link.pageid : ""}
              onChange={(e) =>
                setLink((i) => {
                  return { ...i, pageid: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="idrol">Role ID:</label>
            <input
              type="number"
              name="idrol"
              id="idrol"
              value={link.idrol ? link.idrol : ""}
              onChange={(e) =>
                setLink((i) => {
                  return { ...i, idrol: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="description">Description:</label>
            <input
              type="text"
              name="description"
              id="description"
              value={link.description ? link.description : ""}
              onChange={(e) =>
                setLink((i) => {
                  return { ...i, description: e.target.value };
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
              value={link.user_creation ? link.user_creation : ""}
              onChange={(e) =>
                setLink((i) => {
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
              value={link.user_modification ? link.user_modification : ""}
              onChange={(e) =>
                setLink((i) => {
                  return { ...i, user_modification: e.target.value };
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
