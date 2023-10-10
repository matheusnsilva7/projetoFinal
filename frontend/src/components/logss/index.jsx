import axios from "axios";
import { useState, useEffect } from "react";
import classes from "./index.module.css";
import Nav from "../nav";

const index = () => {
  const [data, setData] = useState([]);
  const [form, setForm] = useState(false);
  const [log, setLog] = useState({});

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get("http://localhost:8000/api/log");
      setData(response.data);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    }
  };

  const createLog = async (e) => {
    try {
      e.preventDefault();
      await axios.post(
        "http://localhost:8000/api/log",
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
        `http://localhost:8000/api/log/${log.id}`,
        Object.fromEntries(new FormData(e.target))
      );
      e.target.reset();
      setForm(false);
      setLog({});
      fetchData();
    } catch (err) {
      console.log(err);
    }
  };

  const del = async (id) => {
    try {
      await axios.delete(`http://localhost:8000/api/log/${id}`);
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
          <h1>Logs</h1>
          <button onClick={() => setForm(true)}>New Log</button>
          <table className={classes.table}>
            <thead>
              <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Surname</th>
                <th>Date</th>
                <th>Hour</th>
                <th>Binnacle</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {data
                ? data.map((e, i) => {
                    return (
                      <tr key={i}>
                        <td>{e.id}</td>
                        <td>
                          {e.user["first_name"]
                            ? e.user["first_name"]
                            : "not defined"}
                        </td>
                        <td>
                          {e.user.surname ? e.user.surname : "not defined"}
                        </td>
                        <td>{e.date ? e.date : "not defined"}</td>
                        <td>{e.hour ? e.hour : "not defined"}</td>
                        <td>{e.binnacle ? e.binnacle : "not defined"}</td>
                        <td className={classes.td}>
                          <span
                            id={e.id}
                            className={`material-symbols-outlined ${classes.blue}`}
                            onClick={() => {
                              setLog(e);
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
              setLog({});
            }}
          ></div>
          <form onSubmit={log.id ? update : createLog}>
            <label htmlFor="binnacle">Binnacle:</label>
            <input
              type="text"
              name="binnacle"
              id="binnacle"
              value={log.binnacle ? log.binnacle : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, binnacle: e.target.value };
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
              value={log.iduser ? log.iduser : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, iduser: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="date">Date:</label>
            <input
              type="date"
              name="date"
              id="date"
              value={log.date ? log.date : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, date: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="hour">Hour:</label>
            <input
              type="time"
              name="hour"
              id="hour"
              value={log.hour ? log.hour : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, hour: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="ip">IP Address:</label>
            <input
              type="text"
              name="ip"
              id="ip"
              value={log.ip ? log.ip : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, ip: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="SW">Software:</label>
            <input
              type="text"
              name="SW"
              id="SW"
              value={log.SW ? log.SW : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, SW: e.target.value };
                })
              }
              required
            />
            <br />

            <label htmlFor="browser">Browser:</label>
            <input
              type="text"
              name="browser"
              id="browser"
              value={log.browser ? log.browser : ""}
              onChange={(e) =>
                setLog((i) => {
                  return { ...i, browser: e.target.value };
                })
              }
              required
            />
            <br />
            <input type="hidden" name="user" value="null" />
            <input type="submit" value="Submit" />
          </form>
        </div>
      )}
    </div>
  );
};

export default index;
