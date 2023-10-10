import classes from "./nav.module.css";

const nav = () => {
  return (
    <nav className={classes.nav}>
      <ul>
        <li>
          <a href="/roles" className={classes.center}>
            <span className="material-symbols-outlined">group</span> Roles
          </a>
        </li>
        <li>
          <a href="/users" className={classes.center}>
            <span className="material-symbols-outlined">group</span>
            <span>Users</span>
          </a>
        </li>
        <li>
          <a href="/logs" className={classes.center}>
            <span className="material-symbols-outlined">credit_card</span>
            <span>Logs</span>
          </a>
        </li>
        <li>
          <a href="/links" className={classes.center}>
            <span className="material-symbols-outlined">share</span>
            <span>Links</span>
          </a>
        </li>
        <li>
          <a href="/settings" className={classes.center}>
            <span className="material-symbols-outlined">settings</span>settings
          </a>
        </li>
        <li>
          <a href="/" className={classes.center}>
            <span className="material-symbols-outlined">logout</span>Logout
          </a>
        </li>
      </ul>
    </nav>
  );
};
export default nav;
