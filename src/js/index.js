import {Navbar} from "./components/Navbar.js";
import * as ReactDOM from "react-dom";

const navbarContainer = document.getElementById("navbar-container");
navbarContainer ? ReactDOM.render(<Navbar />, navbarContainer) : false;

// But in another react component in xxx-id-divtag ????
//const wrapper = document.getElementById("XXX");
//wrapper ? ReactDOM.render(<Navbar />, wrapper) : false;

//React router tutorial set this up later
//https://www.tutorialspoint.com/reactjs/reactjs_router.htm