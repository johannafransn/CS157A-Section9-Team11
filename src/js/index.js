import {Navbar} from "./components/Navbar.js";
import * as ReactDOM from "react-dom";
import {App} from "./App.js";
//React router import
import React from "react";
import {BrowserRouter as Router, Route} from 'react-router-dom';


ReactDOM.render(

    <Router>
        <App/>

    </Router>,
     document.getElementById("contentContainer")

);



//React router tutorial set this up later
//https://www.tutorialspoint.com/reactjs/reactjs_router.htm
