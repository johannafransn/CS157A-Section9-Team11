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

    /**
     * Replace with actual json from the db
     * Maybe create global JS property that this app.js can find when getting stuff from db?
     */
    listWithJsonObjects(){
        return [
                {
                    title: "Apple",
                    imageSrc: "images/apple.jpg",
                    priceInDollar: 2
                },
                {
                    title: "Broccoli",
                    imageSrc: "images/broccoli.jpg",
                    priceInDollar: 5
                },
                {
                    title: "Orange",
                    imageSrc: "images/orange.jpg",
                    priceInDollar: 2
                },

            {
                title: "Avocado",
                imageSrc: "images/avocado.jpg",
                priceInDollar: 4
            },

            {
                title: "Banana",
                imageSrc: "images/banana.jpg",
                priceInDollar: 3
            },
            {
                title: "Grapes",
                imageSrc: "images/grapes.jpg",
                priceInDollar: 2
            }
            ]

    }

    render() {
        return (
            <div>
                <Navbar/>
                <Route path="/" exact component={Home}/>

                <Route path="/produce" render={(props) => <Produce {...props} listOfProduce={this.listWithJsonObjects()} />}/>
                <Route path="/meat" component={Meat}/>
                <Route path="/contact" component={Contact}/>
                <Route path="/dry_food" component={dry_food}/>
                <Route path="/cart" component={Cart}/>
                <Route path="/beverage" component={Beverage}/>
            </div>
               )
            }
}