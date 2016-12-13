<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Sign-Up/Login Form</title>
    <link rel="stylesheet" href="stylesheets/css/style.css">
    <script src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
</head>

<body>
<div class="form">
    <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Sign In</a></li>
    </ul>
    <div class="tab-content">
        <div id="signup">
            <h1>Hello World</h1>
            <form action="./json" method="post">
                <div class="top-row">
                    <div class="field-wrap">
                        <label>
                            First Name<span class="req">*</span>
                        </label>
                        <input id="firstname" type="text" required autocomplete="off" />
                    </div>
                    <div class="field-wrap">
                        <label>
                            Last Name<span class="req">*</span>
                        </label>
                        <input id="lastname" type="text" required autocomplete="off" />
                    </div>
                </div>
                <div class="field-wrap">
                    <label>
                        Email<span class="req">*</span>
                    </label>
                    <input id="email" type="email" required autocomplete="off" />
                </div>
                <div class="field-wrap">
                    <label>
                        Password<span class="req">*</span>
                    </label>
                    <input id="password" type="password" required autocomplete="off" />
                </div>
                <input type="submit" class="button button-block">
            </form>
        </div>
        <div id="login">
            <h1>Welcome Back!</h1>
            <form action="./home">
                <div class="field-wrap">
                    <label>
                        Email<span class="req">*</span>
                    </label>
                    <input type="email" required autocomplete="off" />
                </div>
                <div class="field-wrap">
                    <label>
                        Password<span class="req">*</span>
                    </label>
                    <input type="password" required autocomplete="off" />
                </div>
                <p class="forgot"><a href="#">Forgot Password?</a></p>
                <button class="button button-block">Log In</button>
            </form>
        </div>
    </div>
    <!-- tab-content -->
</div>
<!-- /form -->
<script src="stylesheets/js/index.js"></script>
</body>

</html>