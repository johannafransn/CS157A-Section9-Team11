import React, {Component} from "react";

class Produce extends Component
{

    htmlForOneProduce(produce){
        return (

        // crete new router?
        <div className="col-md-4 product-grid">
            <div className="image">
                <a href="#">
                    <img src={produce.imageSrc} alt="description of picture" className="w-100"/>
                    <div className="overlay">
                        <div className="detail">View Details</div>
                    </div>
                </a>
            </div>
            <h5 className="text-center">{produce.title}</h5>
            <h5 className="text-center">Price: $ {produce.priceInDollar}</h5>
            <a href="#" className="btn buy">BUY</a>
        </div>
        )
    }

    render()
    {
        console.log(this.props.listOfProduce)
        let htmlForWholeProduceList = this.props.listOfProduce.map((produce) => {
            return this.htmlForOneProduce(produce)
        }).join("");
        console.log(htmlForWholeProduceList)

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
                    {this.props.listOfProduce.map(produce => this.htmlForOneProduce(produce)) }
                </div>

</div>
        )
    }
}

export default Produce;

