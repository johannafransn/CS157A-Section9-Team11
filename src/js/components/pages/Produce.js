import React, {Component} from "react";

class Produce extends Component
{
    render()
    {
        return(



            <div>
                <div className="container-fluid padding">
                    <div className="row welcome text-center">
                        <div className="col-12">
                            <h1 className="display-4">Fresh Produce.</h1>
                        </div>

                            <div className="col-12">
                                <p className="lead">We have tons of great options for fresh produce. Check them out here! </p>
                            </div>
                    </div>
                </div>



                <div className="row">

                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/apple.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Apple</h5>
                        <h5 className="text-center">Price: $5</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/broccoli.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Broccoli</h5>
                        <h5 className="text-center">Price: $1</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/orange.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Orange</h5>
                        <h5 className="text-center">Price: $1</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/grapes.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Grapes</h5>
                        <h5 className="text-center">Price: $4</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/avocado.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Avocado</h5>
                        <h5 className="text-center">Price: $2</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/banana.jpg" alt="description of picture" className="w-100"/>
                                    <div className="overlay">
                                        <div className="detail">View Details</div>
                                    </div>
                            </a>
                        </div>
                        <h5 className="text-center">Banana</h5>
                        <h5 className="text-center">Price: $3</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>


                </div>

</div>
        )
    }
}

export default Produce;

