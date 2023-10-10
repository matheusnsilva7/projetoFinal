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

  return (
    <div className={classes.container}>
      <Nav />
      <div className={classes.mainContainer}>
        <div>
          <h1>Roles</h1>
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
                        <td id={e.id} className={classes.blue}>
                          <span className="material-symbols-outlined">
                            settings
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
          <div onClick={() => setForm(false)}></div>
          <form onSubmit={createUser}>
            <label htmlFor="personid">Person ID:</label>
            <input type="number" name="personid" id="personid" required />
            <br />
            <label htmlFor="iduser">User ID:</label>
            <input type="number" name="iduser" id="iduser" required />
            <br />
            <label htmlFor="user">User:</label>
            <input type="text" name="user" id="user" required />
            <br />
            <label htmlFor="clue">Clue:</label>
            <input type="text" name="clue" id="clue" required />
            <br />
            <label htmlFor="enabled">Enabled:</label>

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
            <input type="date" name="date" id="date" required />
            <br />
            <label htmlFor="idrol">Role ID:</label>
            <input type="number" name="idrol" id="idrol" required />
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
