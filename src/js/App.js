//Import pages
import {Navbar} from "./components/Navbar";
import Home from "./components/pages/Home";
import Produce from "./components/pages/Produce";
import Meat from "./components/pages/Meat";
import Contact from "./components/pages/Contact";
import Cart from "./components/pages/Cart";
import Beverage from "./components/pages/Beverage";
import dry_food from "./components/pages/dry_food";
//Import react router
import {Route, Switch} from "react-router-dom";
import React, {Component} from "react";

export class App extends Component {
    render() {
        return (
            <div>
                <Navbar/>
                <Route path="/" exact component={Home}/>

                <Route path="/produce" component={Produce}/>
                <Route path="/meat" component={Meat}/>
                <Route path="/contact" component={Contact}/>
                <Route path="/dry_food" component={dry_food}/>
                <Route path="/cart" component={Cart}/>
                <Route path="/beverage" component={Beverage}/>
            </div>
               )
            }
}