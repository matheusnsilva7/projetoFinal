import axios from "axios";
import { useState, useEffect } from "react";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  const [data, setData] = useState([]);
  const [form, setForm] = useState(false);
  const [user, setUser] = useState({});

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get("http://localhost:8000/api/members");
      setData(response.data);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    }
  };

  const createUser = async (e) => {
    try {
      e.preventDefault();
      await axios.post(
        "http://localhost:8000/api/members",
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
      await axios.patch(
        `http://localhost:8000/api/members/${user.id}`,
        Object.fromEntries(new FormData(e.target))
      );
      e.target.reset();
      setForm(false);
      setUser({});
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  const del = async (id) => {
    try {
      await axios.delete(`http://localhost:8000/api/members/${id}`);
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
          <h1>User</h1>
          <button onClick={() => setForm(true)}>New user</button>
          <table className={classes.table}>
            <thead>
              <tr>
                <th>First Name</th>
                <th>surname</th>
                <th>User Creation</th>
                <th>User Modification</th>
                <th>Role</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {data
                ? data.map((e, i) => {
                    return (
                      <tr key={i}>
                        <td>
                          {e.person["first_name"]
                            ? e.person["first_name"]
                            : "not defined"}
                        </td>
                        <td>
                          {e.person.surname ? e.person.surname : "not defined"}
                        </td>
                        <td>
                          {e.person.usercreation
                            ? e.person.usercreation
                            : "not defined"}
                        </td>
                        <td>
                          {e.person.usermodification
                            ? e.person.usermodification
                            : "not defined"}
                        </td>
                        <td>{e.role.role ? e.role.role : "not defined"}</td>
                        <td className={classes.td}>
                          <span
                            id={e.id}
                            className={`material-symbols-outlined ${classes.blue}`}
                            onClick={() => {
                              setForm(true);
                              setUser(e);
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
                : "no users"}
            </tbody>
          </table>
        </div>
      </div>
      {form && (
        <div className={classes.formContainer}>
          <div
            onClick={() => {
              setUser({});
              setForm(false);
            }}
          ></div>
          <form onSubmit={user.id ? update : createUser}>
            <label htmlFor="personid">Person ID:</label>
            <input
              type="number"
              name="personid"
              id="personid"
              value={user.personid ? user.personid : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, personid: e.target.value };
                })
              }
              required
            />
            <br />
            <label htmlFor="iduser">User ID:</label>
            <input
              type="number"
              name="iduser"
              id="iduser"
              value={user.iduser ? user.iduser : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, iduser: e.target.value };
                })
              }
              required
            />
            <br />
            <label htmlFor="user">User:</label>
            <input
              type="text"
              name="user"
              id="user"
              value={user.user ? user.user : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, user: e.target.value };
                })
              }
              required
            />
            <br />
            <label htmlFor="clue">Clue:</label>
            <input
              type="text"
              name="clue"
              id="clue"
              value={user.clue ? user.clue : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, clue: e.target.value };
                })
              }
              required
            />
            <br />
            <label>Enabled:</label>

            <input type="radio" name="enabled" id="enabled_yes" value="1" />
            <label htmlFor="enabled_yes" className="radio">
              Yes
            </label>
            <input type="radio" name="enabled" id="enabled_no" value="0" />
            <label htmlFor="enabled_no" className="radio">
              No
            </label>
            <br />
            <label htmlFor="date">Date:</label>
            <input
              type="date"
              name="date"
              id="date"
              value={user.date ? user.date : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, date: e.target.value };
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
              value={user.idrol ? user.idrol : ""}
              onChange={(e) =>
                setUser((i) => {
                  return { ...i, idrol: e.target.value };
                })
              }
              required
            />
            <input type="hidden" name="usercreation" value="0" />
            <input type="hidden" name="usermodification" value="0" />
            <br />
            <input type="submit" value="Submit" />
          </form>
        </div>
      )}
    </div>
  );
};

export default index;
