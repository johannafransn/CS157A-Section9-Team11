import React, {Component} from "react";
import { Link } from "react-router-dom";
//In javascript you dont need to specify folders in this server
// just write name of nameofjsp.jsp to find href

export class Navbar extends Component {
    render() {
        return (
            <nav className="navbar navbar-expand-md navbar-light bg-">
                <div>
                    <Link className="navbar-brand" to="/"><img src="logo.png"/></Link>
                    <div className="collpase navbar-collapse" id="navbarResponsive">
                        <ul className="navbar-nav ml-auto">
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link active" to="/">Home</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/contact">Contact</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/dry_food">Dry Food</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/meat">Meat</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/beverage">Beverages</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/produce">Produce</Link>
                            </li>
                            <li className="nav-item active nav-item-padding">
                                <Link className="nav-link" to="/cart">Cart</Link>
                            </li>
                        </ul>
                    </div>

                </div>
            </nav>


        )
    }
}