<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Onine Food Delivery Service | HelloBhukkads.com</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" media="screen and (max-width: 1170px)" href="css/phone.css">
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&family=Bree+Serif&display=swap" rel="stylesheet">
</head>

<body>
    <nav id="navbar">
        <div id="logo">
            <img src="IMG/Logo.png" alt="MyOnlineDeals.com">
        </div>
        <ul>
            <li class="item"><a href="#home">Home</a></li>
            <li class="item"><a href="#services-container">Services</a></li>
            <li class="item"><a href="#client-section">Our Clients</a></li>
            <li class="item"><a href="#contact">Contact Us</a></li>
            <!-- <li class="item"><a></a></li> -->
        </ul>
    </nav>
    <section id="home">
        <h1 class="h-prim">Welcome To My Online Food Servies</h1>
        <p class="h-para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum error id sunt.</p>
        <p class="h-para">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
        <button class="btn">Order Now</button>
    </section>
    <section id="services-container">
        <h1 class="h-prim center">Our Services</h1>
        <div id="services">
            <div class="box">
                <img src="./IMG/S3.png" alt="">
                <h2 class="h-sec center">Food Ordering</h2>
                <p class="center">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Earum ab qui eaque excepturi soluta tenetur ipsum vero sit, maxime recusandae.Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem quasi laudantium laborum rerum molestias.</p>
            </div>
            <div class="box">
                <img src="./IMG/S6.png" alt="">
                <h2 class="h-sec center">Food Catering</h2>
                <p class="center">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Earum ab qui eaque excepturi soluta tenetur ipsum vero sit, maxime recusandae.Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem quasi laudantium laborum rerum molestias.</p>
            </div>
            <div class="box">
                <img src="./IMG/S5.png" alt="">
                <h2 class="h-sec center">Food Delivery</h2>
                <p class="center">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Earum ab qui eaque excepturi soluta tenetur ipsum vero sit, maxime recusandae.Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem quasi laudantium laborum rerum molestias.</p>
            </div>
        </div>
    </section>
    <section id="client-section">
        <h1 class="h-prim center">Our Clients</h1>
        <div id="clients">
            <div class="client-item">
                <img src="./IMG/LOGO1.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="./IMG/LOGO2.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="./IMG/LOGO3.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="./IMG/LOGO4.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="./IMG/LOGO5.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="./IMG/LOGO6.webp" alt="Our Client">
            </div>
        </div>
    </section>
    <section id="contact">
        <h1 class="h-prim center">Contact Us</h1>
        <div id="contact-box">
            <form action="">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name" placeholder="Enter Your Name">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="name" id="email" placeholder="Enter Your Email">
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="phone" name="name" id="phone" placeholder="Enter Your Phone">
                </div>
                <div class="form-group">
                    <label for="message">Name</label>
                    <textarea name="message" id="message" cols="30" rows="10"></textarea>
                </div>
            </form>
        </div>
    </section>
    <footer>
        <div class="center">
            Copyright &copy; www.HelloBhukkads.com All rights reserved!
        </div>
    </footer>
</body>

</html>
