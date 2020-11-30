import React, {Component} from "react";
import Route, {BrowserRouter} from "react-router-dom";
import MeatScreen from "./MeatScreen";

class Meat extends Component
{
    render()
    {
        return(
            <BrowserRouter>
            <div>

                <div className="container-fluid padding">
                    <div className="row welcome text-center">
                        <div className="col-12">
                            <h1 className="display-4">Fresh Meat.</h1>
                        </div>
                        <div className="col-12">
                            <p className="lead">We have tons of great options for fresh Meat. Check them out here! </p>
                        </div>
                    </div>
                </div>



                <div className="row">

                    <div className="col-md-4 product-grid">


                        <div className="image">
                            <a href="#">
                                <img src="images/lamb.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Lamb</h5>
                        <h5 className="text-center">Price: $7</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/pork.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Pork</h5>
                        <h5 className="text-center">Price: $5</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/chicken.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Chicken</h5>
                        <h5 className="text-center">Price: $4</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/groundbeef.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Ground Beef</h5>
                        <h5 className="text-center">Price: $5</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>

                </div>

            </div>
            </BrowserRouter>
        )
    }
}

export default Meat;