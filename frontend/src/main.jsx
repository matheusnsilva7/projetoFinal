import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx";
import Overview from "./components/overview";
import Register from "./components/register";
import Settings from "./components/settings";
import Users from "./components/users";
import Roles from "./components/roles";
import Logs from "./components/logs";
import Links from "./components/links";
import "./index.css";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
  },
  {
    path: "/register",
    element: <Register />,
  },
  {
    path: "/overview",
    element: <Overview />,
  },
  {
    path: "/roles",
    element: <Roles />,
  },
  {
    path: "/links",
    element: <Links />,
  },
  {
    path: "/users",
    element: <Users />,
  },
  {
    path: "/logs",
    element: <Logs />,
  },
  {
    path: "/settings",
    element: <Settings />,
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
