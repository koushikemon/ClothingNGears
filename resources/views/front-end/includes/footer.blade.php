
<div class="footer-w3l">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid">
                <h4>About </h4>
                <p>You need cloths? Gears to make you classy? Then you are in the right spot. Shop from us, see what we have got for you. happy Shopping.</p>
                <div class="social-icon">
                    <a href="#"><i class="icon"></i></a>
                    <a href="#"><i class="icon1"></i></a>
                    <a href="#"><i class="icon2"></i></a>
                    <a href="#"><i class="icon3"></i></a>
                </div>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>My Account</h4>
                <ul>
                    <li><a href="{{ route('checkout') }}">Checkout</a></li>
                    <li><a href="{{ route('user/login') }}">Login</a></li>
                    <li><a href="{{ route('checkout') }}"> Create Account </a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Information</h4>
                <ul>
                @foreach($brands as $brand)
                    <li><a href="{{ route('brand-product', ['id'=>$brand->id]) }}">{{ $brand->brand_name }}</a></li>
                    @endforeach
            </div>
            <div class="col-md-3 footer-grid foot">
                <h4>Contacts Us</h4>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">mohammdpur, Dhaka-1217</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">+880-16846166461</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:admin@gmail.com"> admin@gmail.com</a></li>

                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
    <div class="container">
        <div class="copy-left">
            <p>&copy; 2019 Waveshop. All rights reserved | Design by <a href="">Orion VFX Production</a></p>
        </div>
        
        <div class="clearfix"></div>
    </div>
</div>
<!--copy-->
