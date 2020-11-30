import React, {Component} from "react";

class Beverage extends Component
{
    render()
    {
        return(
            <div>
                <div className="container-fluid padding">
                    <div className="row welcome text-center">
                        <div className="col-12">
                            <h1 className="display-4">Fresh Beverages.</h1>
                        </div>

                        <div className="col-12">
                            <p className="lead">We have tons of great options for fresh beverages. Check them out here! </p>
                        </div>
                    </div>
                </div>



                <div className="row">




                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/sparklingwater.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Sparkling Water</h5>
                        <h5 className="text-center">Price: $1</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/orangejuice.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Orange Juice</h5>
                        <h5 className="text-center">Price: $3</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/beer.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Beer</h5>
                        <h5 className="text-center">Price: $4</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/milk.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Milk</h5>
                        <h5 className="text-center">Price: $2</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/whiskey.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Whiskey</h5>
                        <h5 className="text-center">Price: $5</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>


                </div>

            </div>
        )
    }
}

export default Beverage;