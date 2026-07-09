<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Details - Manas Yuvicare | Hospital Information Management System</title>
        <!-- Bootstrap CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">

        <style>
            :root {
                --sea-turquoise: #40E0D0;
                --sea-caribbean: #00CED1;
                --sea-teal: #008B8B;
                --sea-deep: #003333;
                --sea-light: #AFEEEE;
                --sea-foam: #E0FFFF;
                --white: #ffffff;
                --text: #1f2937;
            }

            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(rgba(224, 255, 255, 0.85), rgba(224, 255, 255, 0.85)),
                    url('https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: var(--text);
                min-height: 100vh;
                display: flex;
                flex-direction: column;
                margin: 0;
                padding: 0;
                overflow-x: hidden;
            }

            /* ===== NAVBAR ===== */
            .modern-header {
                background: linear-gradient(135deg, var(--sea-turquoise) 0%, var(--sea-caribbean) 100%);
                height: 80px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                position: sticky;
                top: 0;
                z-index: 1000;
            }

            .header-container {
                max-width: 1400px;
                margin: 0 auto;
                padding: 0 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                height: 100%;
            }

            .logo {
                display: flex;
                align-items: center;
                gap: 12px;
                text-decoration: none;
                color: white;
            }

            .logo-icon {
                width: 45px;
                height: 45px;
                background: white;
                border-radius: 10px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--sea-teal);
                font-size: 20px;
            }

            .logo-text h1 {
                font-size: 22px;
                margin: 0;
                font-weight: 700;
            }

            .nav-menu {
                display: flex;
                list-style: none;
                margin: 0;
                padding: 0;
                gap: 8px;
            }

            .nav-link-custom {
                color: white;
                text-decoration: none;
                font-weight: 600;
                font-size: 14px;
                padding: 10px 18px;
                border-radius: 20px;
                transition: 0.3s;
                background: rgba(255, 255, 255, 0.1);
            }

            .nav-link-custom:hover {
                background: white;
                color: var(--sea-teal);
            }

            .container-box {
                max-width: 800px;
                margin: 40px auto;
                background: white;
                padding: 40px;
                border-radius: 20px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
                text-align: center;
            }

            .alert-box {
                background: #FFF9C4;
                padding: 20px;
                border-radius: 12px;
                margin-bottom: 20px;
                font-weight: 600;
            }

            .info-box {
                background: #E1F5FE;
                padding: 20px;
                border-radius: 12px;
                margin: 20px 0;
                font-weight: 600;
            }

            .btn-signup {
                background: #003333;
                color: white;
                padding: 10px 25px;
                border-radius: 6px;
                text-decoration: none;
                font-weight: bold;
                display: inline-block;
                margin: 10px 0;
            }

            .login-form-container {
                max-width: 400px;
                margin: 0 auto;
                background: #E6F3F3;
                padding: 30px;
                border-radius: 15px;
                text-align: left;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-label {
                display: block;
                margin-bottom: 8px;
                font-weight: 500;
                color: #446666;
            }

            .form-input {
                width: 100%;
                padding: 12px;
                border: 1px solid #ddd;
                border-radius: 4px;
                background: white;
            }

            .btn-login {
                background: #333333;
                color: white;
                padding: 12px;
                width: 100%;
                border: none;
                border-radius: 4px;
                font-weight: bold;
                margin-top: 10px;
                cursor: pointer;
            }

            /* ===== CONTENT SECTION ===== */
            .page-content {
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px 20px 0;
                /* Reduced bottom padding */
                width: 100%;
            }

            .modules-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
                gap: 15px;
                margin-top: 40px;
            }

            .module-card {
                background: white;
                padding: 20px;
                border-radius: 12px;
                border: 1px solid #eee;
                transition: 0.3s;
                text-align: center;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.02);
            }

            .module-card:hover {
                transform: translateY(-3px);
                border-color: var(--sea-teal);
                background: #fdfdfd;
            }

            .module-icon {
                width: 45px;
                height: 45px;
                background: #e0f2f1;
                border-radius: 10px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--sea-teal);
                font-size: 18px;
                margin: 0 auto 12px;
            }

            .module-card h6 {
                font-weight: 700;
                font-size: 15px;
                color: #334155;
                margin-bottom: 0;
            }

            /* ===== VIBRANT TEAL FOOTER ===== */
            .modern-footer {
                background: #26D0CE;
                /* Vibrant teal from screenshot */
                color: white;
                padding: 60px 0 0;
                position: relative;
                width: 100%;
                margin-top: auto;
            }

            .footer-grid {
                display: grid;
                grid-template-columns: 1.5fr repeat(3, 1fr);
                gap: 40px;
                max-width: 1400px;
                margin: 0 auto;
                padding: 0 30px;
                text-align: left;
            }

            .footer-col h5 {
                color: white;
                font-size: 14px;
                font-weight: 700;
                margin-bottom: 25px;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .footer-links {
                list-style: none;
                padding: 0;
                margin: 0;
                display: grid;
                grid-template-columns: 1fr;
                gap: 12px;
            }

            .footer-links-multi {
                grid-template-columns: 1fr 1fr;
            }

            .footer-links a {
                color: rgba(255, 255, 255, 0.8);
                text-decoration: none;
                font-size: 14px;
                transition: 0.2s;
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .footer-links a:hover {
                color: white;
                transform: translateX(5px);
            }

            .footer-bottom {
                background: rgba(0, 0, 0, 0.05);
                margin-top: 60px;
                padding: 30px 0;
                text-align: center;
                font-size: 13px;
                color: rgba(255, 255, 255, 0.7);
                border-top: 1px solid rgba(255, 255, 255, 0.1);
            }

            .footer-logo {
                display: flex;
                align-items: center;
                gap: 15px;
                margin-bottom: 20px;
                text-decoration: none;
            }

            .footer-logo i {
                font-size: 28px;
                color: white;
            }

            .footer-logo span {
                font-size: 20px;
                font-weight: 700;
                color: white;
            }

            @media (max-width: 1199px) {
                .footer-grid {
                    grid-template-columns: 1fr 1fr;
                }
            }

            @media (max-width: 991px) {
                .footer-links-multi {
                    grid-template-columns: 1fr;
                }
            }

            @media (max-width: 767px) {
                .footer-grid {
                    grid-template-columns: 1fr;
                }

                .nav-menu {
                    display: none;
                }
            }
        </style>
    </head>

    <body>
        <header class="modern-header">
            <div class="header-container">
                <a href="/home" class="logo">
                    <div class="logo-icon"><i class="fas fa-heartbeat"></i></div>
                    <div class="logo-text">
                        <h1>Manas Yuvicare</h1>
                    </div>
                </a>
                <ul class="nav-menu">
                    <li><a href="/home" class="nav-link-custom"><i class="fas fa-home me-2"></i>Home</a></li>
                </ul>
            </div>
        </header>

        <div class="page-content">
            <div class="container-box">
                <div class="alert-box">Click on the sign up button and register here</div>
                <p style="margin-top: -10px; font-weight: 600; color: #446666; font-size: 15px;">Sign Up</p>
                <a href="/product_details" class="btn-signup">Sign Up</a>
                <div class="info-box">Enter the given username and password here to view the product details.</div>
                <div class="login-form-container">
                    <form action="#" method="post">
                        <div class="form-group"><label class="form-label">Username or Email Address</label><input
                                type="text" class="form-input"></div>
                        <div class="form-group"><label class="form-label">Password</label><input type="password"
                                class="form-input"></div>
                        <button type="submit" class="btn-login">LOG IN</button>
                        <div class="mt-3 text-center">
                            <a href="#"
                                style="color: #446666; text-decoration: none; font-size: 13px; font-weight: 500;">Lost
                                your password?</a>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <!-- Refined Light Footer -->
        <footer class="modern-footer">
            <div class="footer-grid">
                <div class="footer-col">
                    <a href="/home" class="footer-logo">
                        <i class="fas fa-hospital-alt"></i>
                        <span>Manas Yuvicare</span>
                    </a>
                    <p class="small">Integrated healthcare management solutions provider offering enterprise-grade
                        Hospital
                        Information Management Systems for clinicians and hospitals.</p>
                    <div class="d-flex gap-4 mt-4">
                        <a href="#" class="text-secondary"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-secondary"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-secondary"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h5>Navigation</h5>
                    <ul class="footer-links footer-links-multi">
                        <li><a href="/home">Home</a></li>
                        <li><a href="/product">Product</a></li>
                        <li><a href="/aboutus">About Us</a></li>
                        <li><a href="/contactus">Contact</a></li>
                        <li><a href="/free_trails">free_trails</a></li>
                        
                        <li><a href="#">Solutions</a></li>
                        <li><a href="#">Resources</a></li>
                        <li><a href="#">Pricing</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Product Suite</h5>
                    <ul class="footer-links">
                        <li><a href="#">OPD Care</a></li>
                        <li><a href="#">IPD Management</a></li>
                        <li><a href="#">Tele-Consultation</a></li>
                        <li><a href="#">Pharmacy Hub</a></li>
                        <li><a href="#">Lab & Imaging</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Get In Touch</h5>
                    <ul class="footer-links">
                        <li><a href="mailto:info@yuvicare.in"><i class="fas fa-envelope text-primary"></i>
                                info@yuvicare.in</a></li>
                        <li><a href="tel:+919156248809"><i class="fas fa-phone text-primary"></i> +91
                                9156248809</a></li>
                        <li><span class="small d-block mt-1 text-muted"><i class="fas fa-map-marker-alt me-2"></i>
                                Nagpur,
                                MH, India</span></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p class="mb-0">Copyright © 2021 - 2025 Manas Yuvicare Healthcare Systems. All Rights Reserved.</p>
            </div>
        </footer>
    </body>

    </html>