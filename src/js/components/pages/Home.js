import React, {Component} from "react";

class Home extends Component
{
    render() {
        return (

            /*<div><h2>THIS IS HOme page</h2></div>*/
            <div>
                <div id="slides" className="carousel slide" data-ride="carousel">

                    <ul className="carousel-indicators">
                        <li data-target="#slides" data-slide-to="0" className="active"></li>
                        <li data-target="#slides" data-slide-to="1"></li>
                        <li data-target="#slides" data-slide-to="2"></li>
                    </ul>
                    <div className="carousel-inner">
                        <div className="carousel-item active">
                            <img src="slider3.jpg" height="600"></img>
                            <div className="carousel-caption">
                                <h1 className="display-2">GroceryMart</h1>
                                <h3>Easy Shopping Online</h3>
                                <a href="signup_pages/market_signup.jsp">
                                    <button type="button" className="btn btn-outline-light btn-lg">Market Signup
                                    </button>
                                </a>
                                <a href="signup_pages/customer_signup.jsp">
                                    <button type="button" className="btn btn-primary btn-lg">Customer Signup
                                    </button>
                                </a>
                            </div>
                        </div>
                        <div className="carousel-item">
                            <img src="slider2.jpg" alt="" width="1500" height="500"></img>
                        </div>
                        <div className="carousel-item">
                            <img src="slider1.jpg" alt="" height="500"></img>

                        </div>
                    </div>
                </div>


                <div className="container-fluid">
                    <div className="row jumbotron">
                        <div className="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
                            <p className="lead">Grocery shopping online is simple and easy. Try GroceryMart today!</p>
                        </div>
                        <div className="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
                            <a href="#">
                                <button type="button" className="btn btn-outline-secondary btn-lg">Start Shopping!
                                </button>
                            </a>
                        </div>
                    </div>
                </div>


                <div className="container-fluid padding">
                    <div className="row welcome text-center">
                        <div className="col-12">
                            <h1 className="display-4">Made for you.</h1>
                        </div>

                        <div className="col-12">
                            <p className="lead">Welcome to GroceryMart. Our core mission values are to provide a safe
                                environment for people
                                to be able to shop their grocieries online. </p>
                        </div>
                    </div>
                </div>



                <div className="container-fluid padding">
                    <div className="row text-center padding">
                        <div className="col-xs-12 col-sm-6 col-md-4">
                            <i className="fa fa-shopping-cart"></i>
                            <h3>EASY SHOPPING</h3>
                            <p>Choose between a variety of fruits and vegtables</p>
                        </div>
                        <div className="col-xs-12 col-sm-6 col-md-4">
                            <i className="fa fa-recycle"></i>
                            <h3>SUSTAINABLE</h3>
                            <p>We try our best to limit waste, we only source sustainably</p>
                        </div>
                        <div className="col-sm-12 col-sm-6 col-md-4">
                            <i className="fa fa-heart"></i>
                            <h3>HEALTHY</h3>
                            <p>Food that is healthy and tastes good!</p>
                        </div>
                    </div>
                    <hr className="my-4"></hr>
                </div>


                <div className="container-fluid padding">
                    <div className="row padding">
                        <div className="col-lg-6">
                            <h2>Only the best quality products...</h2>
                            <p>We only resoruce the best quality fresh produce. Choose between multiple varieties in the
                                fruit and
                                vegtable section.</p>
                            <p>Our meat is only brought up in humane conditions and sourced locally. Try our delicates
                                today.</p>
                            <p>We have chosen select beverages that are both healthy and tastes good. Browse to our
                                beverage section to
                                read more!</p>

                                <a href="" className="btn btn-primary">Learn More</a>
                        </div>
                        <div className="col-lg-4">
                            <img src="sidePic.png" className="img-fluid"/>
                        </div>
                    </div>
                </div>

            </div>



    )
    }
    }


    export default Home;