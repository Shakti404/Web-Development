/* CSS Reset */

* {
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}


/* CSS Variables */

:root {
    --navbar-height: 60px;
}


/* body{
    background-color: tomato;
} */


/* Navigation Bar */

#navbar {
    display: flex;
    align-items: center;
    position: sticky;
    top: 0px;
}

#navbar::before {
    content: "";
    background-color: black;
    position: absolute;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    z-index: -1;
    opacity: 0.7;
}


/* Navigation Bar Logo And Image */

#logo {
    margin: 2px 10px;
}

#logo img {
    height: 45px;
    margin: 5px 8px;
}


/* Navigation Bar List Styling */

#navbar ul {
    display: flex;
    font-family: 'Baloo Bhai 2', cursive;
}

#navbar ul li {
    /* color: whitesmoke; */
    list-style: none;
    font-size: 1.2rem;
}

#navbar ul li a {
    color: whitesmoke;
    display: block;
    padding: 5px 20px;
    border-radius: 45px;
    text-decoration: none;
}

#navbar ul li a:hover {
    color: black;
    background-color: white;
}


/* Home Section */

#home {
    display: flex;
    flex-direction: column;
    padding: 2px 200px;
    height: 475px;
    justify-content: center;
    align-items: center;
}

#home::before {
    content: "";
    background: url('../IMG/BG_1.jpg') no-repeat center center/cover;
    position: absolute;
    height: 540px;
    top: 0px;
    left: 0px;
    width: 100%;
    z-index: -1;
    opacity: 0.89;
}

#home h1 {
    color: white;
    text-align: center;
    font-family: 'Bree Serif', serif;
}


/* Service Section */

#services {
    margin: 0px 35px;
    display: flex;
}

#services .box {
    border: 2px solid brown;
    padding: 35px;
    margin: 2px 12px;
    border-radius: 25px;
    background-color: #ecdcdc;
    margin-bottom: 20px;
}

#services .box img {
    height: 100px;
    display: block;
    margin: auto;
}

#services .box p {
    font-family: 'Bree Serif', serif;
}


/* Client Section */

#client-section {
    height: 373px;
    margin: 35px 0px;
    /* height: 334px;
    margin: 0px 0px; */
}

#client-section::before {
    content: "";
    position: absolute;
    background: url('../IMG/CBG.jpg') no-repeat center center/cover;
    width: 100%;
    height: 55%;
    z-index: -1;
    opacity: 0.7;
    /* border-radius: 35px; */
}

#clients {
    display: flex;
    justify-content: center;
    align-items: center;
}

.client-item {
    padding: 35px;
}

#clients img {
    height: 100px;
}


/* Cntact Section */

#contact {
    position: relative;
}

#contact::before {
    content: "";
    background: url('../IMG/ContactUs_.jpg')no-repeat center center/cover;
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: -1;
    opacity: 0.5;
}

#contact-box {
    display: flex;
    justify-content: center;
    align-items: center;
    padding-bottom: 35px;
}

#contact-box form {
    width: 45%;
}

#contact-box form label {
    font-size: 1.2rem;
    font-family: 'Bree Serif', serif;
}

#contact-box input,
#contact-box textarea {
    width: 100%;
    padding: 0.3rem;
    border-radius: 10px;
    font-size: 1.2rem;
}

footer {
    background: black;
    color: white;
    padding: 9px 20px;
}


/* Utility Classes */

.h-prim {
    font-size: 2.5rem;
    padding: 15px;
    font-family: 'Bree Serif', serif;
}

.h-sec {
    font-family: 'Bree Serif', serif;
    font-size: 2rem;
    padding: 15px;
}

.h-para {
    color: white;
    text-align: center;
    font-size: 1rem;
    font-family: 'Bree Serif', serif;
}

.btn {
    padding: 5px 20px;
    border: 2px solid white;
    background-color: brown;
    color: white;
    margin: 20px;
    font-size: 1.2rem;
    border-radius: 10px;
    cursor: pointer;
}

.center {
    text-align: center;
}

-----------------------------------------------------------------------------------------------------------------------------------------------------
                        --------------------------Phone.css----------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------
/* Navigation */

#navbar {
    flex-direction: column;
}

#navbar ul li a {
    font-size: 1rem;
    padding: 7px 8px;
    padding-bottom: 8px;
}


/* Home Section  */

#home {
    height: 330px;
    padding: 2px 80px;
}

#home::before {
    height: 450px;
}

#home p {
    font-size: 13px;
}


/* Service Section  */

#services {
    flex-direction: column;
}


/* #services .box {} */


/* Client Section  */

#clients-section::before {
    height: 58%;
}

#clients {
    flex-wrap: wrap;
}

#clients img {
    width: 1.6rem;
    height: 3rem;
    padding: 2px 5px;
}


/* Contact Us  */

#contact-box form {
    width: 70%;
}


/* Utility Class */

.h-prim {
    font-size: 1rem;
}


/* .h-sec {}

.h-para {} */

.btn {
    font-size: 0.8rem;
    padding: 4px 8px;
}


/* .center {} */
