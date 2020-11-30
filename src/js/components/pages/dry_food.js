import React, {Component} from "react";

class dry_food extends Component
{
    render()
    {
        return(
            <div>
                <div className="container-fluid padding">
                    <div className="row welcome text-center">
                        <div className="col-12">
                            <h1 className="display-4">Fresh Dry Food.</h1>
                        </div>

                        <div className="col-12">
                            <p className="lead">We have tons of great options for fresh dry food. Check them out here! </p>
                        </div>
                    </div>
                </div>



                <div className="row">

                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/lentils.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Lentils</h5>
                        <h5 className="text-center">Price: $2</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/pasta.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Pasta</h5>
                        <h5 className="text-center">Price: $1</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/quinoa.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Quinoa</h5>
                        <h5 className="text-center">Price: $6</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/nuts.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Nuts</h5>
                        <h5 className="text-center">Price: $10</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>



                    <div className="col-md-4 product-grid">
                        <div className="image">
                            <a href="#">
                                <img src="images/rice.jpg" alt="description of picture" className="w-100"/>
                                <div className="overlay">
                                    <div className="detail">View Details</div>
                                </div>
                            </a>
                        </div>
                        <h5 className="text-center">Rice</h5>
                        <h5 className="text-center">Price: $2</h5>
                        <a href="#" className="btn buy">BUY</a>
                    </div>


                </div>

            </div>
        )
    }
}
export default dry_food;