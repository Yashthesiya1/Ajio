<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brands Carousel</title>
    <!-- Include the Echo.js script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echo.js/1.7.3/echo.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
    <style>
        .logo-slider {
            margin: 50px auto;
            /* text-align: center; */
        }
        .item img {
            display: flex;
            justify-content: center;
            align-items: center;
            max-width: 50%;
            height: 54%;
        }
    </style>
</head>
<body>

<div id="brands-carousel" class="logo-slider wow fadeInUp">
    <h3 class="section-title">Our Brands</h3>
    <div class="logo-slider-inner">	
        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/gu.jpeg" src="assets/images/blank.gif" alt="Gucci">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/download.png" src="assets/images/blank.gif" alt="Bajaj">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/levis.jpeg" src="assets/images/blank.gif" alt="Blackberry">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/luios.jpeg" src="assets/images/blank.gif" alt="Canon">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/rare.jpeg" src="assets/images/blank.gif" alt="Compas">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/ck.jpeg" src="assets/images/blank.gif" alt="Daikin">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/ga.webp" src="assets/images/blank.gif" alt="Dell">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                    <img data-echo="brandsimage/ax.png" src="assets/images/blank.gif" alt="Samsung">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                <img data-echo="brandsimage/luios.jpeg" src="assets/images/blank.gif" alt="Canon">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                <img data-echo="brandsimage/levis.jpeg" src="assets/images/blank.gif" alt="Blackberry">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                <img data-echo="brandsimage/gu.jpeg" src="assets/images/blank.gif" alt="Gucci">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                <img data-echo="brandsimage/download.png" src="assets/images/blank.gif" alt="Bajaj">
                </a>	
            </div>

            <div class="item">
                <a href="#" class="image">
                <img data-echo="brandsimage/luios.jpeg" src="assets/images/blank.gif" alt="Canon">
                </a>	
            </div>
        </div><!-- /.owl-carousel #logo-slider -->
    </div><!-- /.logo-slider-inner -->
</div><!-- /.logo-slider -->

<!-- Include jQuery and Owl Carousel scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>

<!-- Initialize Owl Carousel -->
<script>
    $(document).ready(function(){
        $("#brand-slider").owlCarousel({
            items: 45, // Number of items to display
            autoPlay: true, // Set AutoPlay to true
            navigation: true, // Show next and prev buttons
            pagination: false
        });

        // Initialize Echo.js for lazy loading
        echo.init({
            offset: 100, // Distance to load the image before it appears in the viewport
            throttle: 250 // Delay in ms
        });
    });
</script>

</body>
</html>
