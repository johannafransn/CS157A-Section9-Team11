import React, {Component} from "react";

class Contact extends Component
{
    render() {
        return (

            <div>
                <div className="body">
                    <div className="container">
                        <div className="left">
                            <div className="left-things">
                                <i className="fas fa-envelope fa-3x"></i>
                                <p className="contact">Contact Us</p>
                                <p className="contact-text">We would love to hear from you !</p>
                            </div>
                        </div>

                        <div className="right">
                            <div className="form">
                                <label htmlFor="firstname"><p>First Name:</p> <input type="text" id="firstname"
                                                                                     name="firstname" placeholder="Enter First Name"></input></label>
                                <label htmlFor="lastname"><p>Last Name:</p> <input type="text" id="lastname"
                                                                                   name="lastname" placeholder="Enter Last Name"></input></label>
                                <label htmlFor="e-mail"><p>Email:</p> <input type="email" id="e-mail" name="e-mail"
                                                                             placeholder="Enter email"></input></label>
                                <label htmlFor="comment"><p>Comment:</p><textarea name="comment"
                                   id="comment" cols="30" rows="10"></textarea></label>
                                <label htmlFor="submit">
                                    <button id="btn">Submit</button></label>
                            </div>

                    </div>
                </div>
            </div>
            </div>
                    )
                    }
                    }

export default Contact;