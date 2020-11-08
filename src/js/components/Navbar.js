import React, {Component} from "react";

export class Navbar extends Component {
    render() {
        return (
            <div className="collpase navbar-collapse" id="navbarResponsive">
                <ul className="navbar-nav ml-auto">
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow" className="active">Home</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow">Contact</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow">Dry Food</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow">Meat</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow">Beverages</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="#blankforNow">Produce</a>
                    </li>
                </ul>
            </div>
        )
    }
}