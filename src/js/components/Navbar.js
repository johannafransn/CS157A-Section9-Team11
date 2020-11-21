import React, {Component} from "react";
//In javascript you dont need to specify folders in this server
// just write name of nameofjsp.jsp to find href

export class Navbar extends Component {
    render() {
        return (
            <div className="collpase navbar-collapse" id="navbarResponsive">
                <ul className="navbar-nav ml-auto">
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="index.jsp" className="active">Home</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="dry_food.jsp">Dry Food</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="meat.jsp">Meat</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="beverage.jsp">Beverages</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="produce.jsp">Produce</a>
                    </li>
                    <li className="nav-item active nav-item-padding">
                        <a className="nav-link" href="cart.jsp">Cart</a>
                    </li>
                </ul>
            </div>
        )
    }
}