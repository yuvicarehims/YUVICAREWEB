
 

<%@ page contentType="text/html;charset=UTF-8" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>About Us - YUVICARE | Hospital Information Management System</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">

<style>
    /* ===== Color Variables ===== */
    :root {
        --primary: #41bfc1;
        --primary-dark: #2a8c8e;
        --secondary: #ffd700;
        --accent: #2a8c8e;
        --light-bg: #dff3f6;
        --dark-text: #333333;
        --medium-text: #555555;
        --light-text: #777777;
        --white: #ffffff;
        --shadow: 0 18px 45px rgba(0, 0, 0, .15);
        --shadow-heavy: 0 25px 60px rgba(65, 191, 193, 0.35);
        --shadow-light: 0 5px 15px rgba(0, 0, 0, 0.05);
        --transition: all 0.3s ease;
    }

    /* ===== Global Styles ===== */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html, body {
        font-family: 'Roboto', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        line-height: 1.6;
        color: var(--dark-text);
        background: var(--light-bg);
        overflow-x: hidden;
    }

    body::before {
        content: "";
        position: fixed;
        inset: 0;
        background: url('${pageContext.request.contextPath}/views/images/hospital-bg.jpg') top/cover no-repeat;
        z-index: -1;
        opacity: 0.03;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
    }

    section {
        padding: 80px 0;
    }

    h1, h2, h3, h4, h5 {
        font-family: 'Poppins', sans-serif;
        font-weight: 700;
        line-height: 1.2;
        margin-bottom: 20px;
    }

    h2 {
        font-size: 2.8rem;
        color: var(--primary-dark);
        text-align: center;
        margin-bottom: 25px;
    }

    .btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        padding: 16px 36px;
        background: linear-gradient(135deg, var(--primary), var(--accent));
        color: var(--white);
        border: none;
        border-radius: 50px;
        font-weight: 600;
        font-size: 1rem;
        text-decoration: none;
        cursor: pointer;
        transition: var(--transition);
        box-shadow: var(--shadow-light);
        position: relative;
        overflow: hidden;
        z-index: 1;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: var(--shadow-heavy);
    }

    .btn-primary {
        background: var(--primary);
        color: var(--white);
    }

    /* ===== Header ===== */
    .main-header {
        position: sticky;
        top: 0;
        width: 100%;
        z-index: 1000;
        background: rgba(255, 255, 255, 0.98);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        border-bottom: 1px solid rgba(65, 191, 193, 0.1);
        transition: all 0.4s ease;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    }

    .header-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 16px 0;
    }

    .main-logo {
        display: flex;
        align-items: center;
        text-decoration: none;
        gap: 12px;
        font-family: 'Poppins', sans-serif;
        color: #333;
    }

    .main-logo-img {
        font-size: 2rem;
        color: var(--primary);
    }

    .main-logo-text {
        display: flex;
        flex-direction: column;
    }

    .main-logo-text h3 {
        font-size: 1.5rem;
        font-weight: 700;
        color: #333;
        letter-spacing: 1px;
    }

    .main-logo-text p {
        font-size: 0.75rem;
        color: var(--medium-text);
        letter-spacing: 0.5px;
        text-transform: uppercase;
    }

    .mobile-menu-btn {
        display: none;
        background: none;
        border: none;
        color: #333;
        font-size: 24px;
        cursor: pointer;
        padding: 8px;
        border-radius: 8px;
        transition: var(--transition);
    }

    .mobile-menu-btn:hover {
        background: rgba(65, 191, 193, 0.1);
    }

    .main-nav ul {
        display: flex;
        gap: 30px;
        list-style: none;
    }

    .main-nav ul li a {
        color: #333;
        text-decoration: none;
        font-weight: 500;
        padding: 8px 0;
        position: relative;
        transition: var(--transition);
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .main-nav ul li a i {
        font-size: 0.9rem;
    }

    .main-nav ul li a::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 0;
        height: 3px;
        background: var(--primary);
        transition: var(--transition);
        border-radius: 3px;
    }

    .main-nav ul li a:hover::after,
    .main-nav ul li a.active::after {
        width: 100%;
    }

    .main-nav ul li a:hover,
    .main-nav ul li a.active {
        color: var(--primary);
    }

    .demo-btn {
        background: var(--primary);
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 50px;
        font-weight: 600;
        font-size: 14px;
        display: flex;
        align-items: center;
        gap: 8px;
        cursor: pointer;
        transition: all 0.3s ease;
        text-decoration: none;
    }

    .demo-btn:hover {
        background: var(--primary-dark);
        transform: translateY(-2px);
        box-shadow: 0 8px 20px rgba(65, 191, 193, 0.3);
    }

    /* ===== Hero Section ===== */
    .about-hero {
        background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
        color: var(--white);
        text-align: left;
        padding: 100px 0 60px;
    }

    .about-hero-inner {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 40px;
    }

    .about-hero-text {
        max-width: 700px;
    }

    .about-hero-image img {
        max-width: 100%;
        height: auto;
        max-height: 360px;
        border-radius: 28px;
        box-shadow: var(--shadow-heavy);
    }

    .about-hero h1 {
        font-size: 3.2rem;
        margin-bottom: 15px;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        color: #fff;
    }

    .about-hero p {
        font-size: 1.25rem;
        max-width: 700px;
        margin: 0 auto 30px;
        opacity: 0.9;
        line-height: 1.6;
        text-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    }

    /* ===== Breadcrumb ===== */
    .breadcrumb {
        background: var(--white);
        padding: 15px 0;
        margin-bottom: 40px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
    }

    .breadcrumb ul {
        display: flex;
        list-style: none;
        padding: 0;
        margin: 0;
        font-size: 14px;
    }

    .breadcrumb li {
        margin-right: 10px;
        display: flex;
        align-items: center;
    }

    .breadcrumb a {
        color: var(--primary);
        text-decoration: none;
        font-weight: 500;
    }

    .breadcrumb a:hover {
        text-decoration: underline;
    }

    .breadcrumb li:after {
        content: "/";
        margin-left: 10px;
        color: var(--light-text);
    }

    .breadcrumb li:last-child:after {
        content: "";
    }

    .breadcrumb li:last-child a {
        color: var(--light-text);
        pointer-events: none;
    }

    
    /* Mission & Vision Section */
    .mission-vision {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 35px;
        /* margin-bottom: 10px; */
    }

    .mission-card, .vision-card {
        background: #f8fafc;
        border-radius: 18px;
        padding: 40px 30px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0, 0, 0, .12);
        transition: .35s ease;
        border: 1px solid transparent;
        position: relative;
        overflow: hidden;
    }

    .mission-card::before, .vision-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(90deg, var(--primary), var(--primary-dark));
    }

    .mission-card:hover, .vision-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 25px 60px rgba(65, 191, 193, 0.35);
        border-color: var(--primary);
    }

    .mission-icon, .vision-icon {
        width: 80px;
        height: 80px;
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 25px;
        font-size: 32px;
        color: white;
    }

    .mission-card h2, .vision-card h2 {
        font-size: 1.8rem;
        margin-bottom: 15px;
        color: var(--primary-dark);
    }

    .mission-card p, .vision-card p {
        color: var(--medium-text);
        line-height: 1.7;
        font-size: 1.125rem;
    }

    /* Values Section */
    .values-section {
        margin-bottom: 80px;
    }

    .section-title {
        text-align: center;
        font-size: 2.8rem;
        margin-bottom: 40px;
        color: var(--primary-dark);
        position: relative;
    }

    .section-title::after {
        content: '';
        position: absolute;
        bottom: -12px;
        left: 50%;
        transform: translateX(-50%);
        width: 60px;
        height: 4px;
        background: var(--primary);
        border-radius: 2px;
    }

    .values-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 35px;
    }

    .value-card {
        background: #f8fafc;
        border-radius: 18px;
        padding: 40px 30px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0, 0, 0, .12);
        transition: .35s ease;
        border: 1px solid transparent;
        position: relative;
        overflow: hidden;
    }

    .value-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(90deg, var(--primary), var(--primary-dark));
    }

    .value-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 25px 60px rgba(65, 191, 193, 0.35);
        border-color: var(--primary);
    }

    .value-icon {
        width: 80px;
        height: 80px;
        background: linear-gradient(135deg, var(--primary), var(--primary-dark));
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 25px;
        font-size: 32px;
        color: white;
    }

    .value-card h3 {
        font-size: 1.5rem;
        margin-bottom: 12px;
        color: var(--primary-dark);
    }

    .value-card p {
        color: var(--medium-text);
        font-size: 1.125rem;
        line-height: 1.6;
    }

    /* Story Section */
    .story-section {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 50px;
        align-items: center;
        margin-bottom: 80px;
        padding: 60px;
        background: var(--white);
        border-radius: 18px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, .12);
    }

    .story-content h2 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        color: var(--primary-dark);
    }

    .story-content p {
        margin-bottom: 20px;
        color: var(--medium-text);
        line-height: 1.7;
        font-size: 1.125rem;
    }

    .story-image {
        border-radius: 18px;
        overflow: hidden;
        box-shadow: var(--shadow-heavy);
    }

    .story-image img {
        width: 100%;
        height: auto;
        display: block;
        transition: var(--transition);
    }

    .story-image:hover img {
        transform: scale(1.05);
    }

    /* Team Section */
    .team-section {
        margin-bottom: 80px;
    }

    .team-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        gap: 35px;
    }

    .team-member {
        background: #f8fafc;
        border-radius: 18px;
        overflow: hidden;
        box-shadow: 0 15px 35px rgba(0, 0, 0, .12);
        transition: .35s ease;
        border: 1px solid transparent;
        position: relative;
        display: flex;
        flex-direction: column;
        height: 100%;
    }

    .team-member::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(90deg, var(--primary), var(--primary-dark));
    }

    .team-member:hover {
        transform: translateY(-10px);
        box-shadow: 0 25px 60px rgba(65, 191, 193, 0.35);
        border-color: var(--primary);
    }

    .member-header {
        background: var(--primary);
        padding: 40px 20px;
        text-align: center;
        position: relative;
    }

    .member-image {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        background: var(--white);
        margin: 0 auto 15px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--primary);
        font-size: 36px;
        font-weight: 600;
        border: 4px solid var(--white);
        box-shadow: var(--shadow-light);
    }

    .member-header h3 {
        color: var(--white);
        font-size: 1.5rem;
        margin-bottom: 5px;
    }

    .member-header .position {
        color: var(--secondary);
        font-weight: 500;
        font-size: 1.125rem;
    }

    .member-info {
        padding: 30px;
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }

    .member-details {
        margin-bottom: 25px;
        flex-grow: 1;
    }

    .member-details p {
        color: var(--medium-text);
        line-height: 1.6;
        font-size: 1.125rem;
        margin-bottom: 15px;
    }

    .member-qualifications {
        list-style: none;
        padding: 0;
        margin: 0 0 15px 0;
    }

    .member-qualifications li {
        color: var(--medium-text);
        font-size: 1rem;
        margin-bottom: 8px;
        display: flex;
        align-items: flex-start;
        gap: 8px;
    }

    .member-qualifications li i {
        color: var(--primary);
        font-size: 0.875rem;
        margin-top: 3px;
    }

    .member-social {
        display: flex;
        gap: 10px;
        margin-top: auto;
    }

    .member-social a {
        width: 40px;
        height: 40px;
        background: rgba(65, 191, 193, 0.1);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--primary);
        text-decoration: none;
        transition: var(--transition);
    }

    .member-social a:hover {
        background: var(--primary);
        color: var(--white);
        transform: translateY(-3px);
    }

    /* CTA Section */
    .cta-section {
        background: linear-gradient(135deg, var(--primary), var(--accent));
        color: var(--white);
        text-align: center;
        padding: 80px 0;
        border-radius: 18px;
        margin-bottom: 80px;
    }

    .cta-section h2 {
        color: var(--white);
        font-size: 2.8rem;
        margin-bottom: 20px;
    }

    .cta-section p {
        font-size: 1.25rem;
        max-width: 700px;
        margin: 0 auto 30px;
        opacity: 0.9;
        line-height: 1.6;
    }

    /* ===== Footer ===== */
    footer {
        background: #1a1a1a;
        color: var(--white);
        padding: 60px 0 20px;
        position: relative;
    }

    footer::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 4px;
        background: linear-gradient(135deg, var(--primary), var(--accent));
    }

    .footer-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 40px;
        margin-bottom: 10px;
    }

    .footer-col h3 {
        font-size: 1.25rem;
        margin-bottom: 25px;
        color: var(--white);
        position: relative;
        padding-bottom: 10px;
    }

    .footer-col h3::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 40px;
        height: 2px;
        background: var(--primary);
    }

    .footer-links {
        list-style: none;
    }

    .footer-links li {
        margin-bottom: 12px;
    }

    .footer-links a {
        color: #bbb;
        text-decoration: none;
        transition: var(--transition);
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .footer-links a:hover {
        color: var(--primary);
        padding-left: 5px;
    }

    .contact-info {
        list-style: none;
    }

    .contact-info li {
        display: flex;
        align-items: flex-start;
        gap: 15px;
        margin-bottom: 0px;
        color: #bbb;
    }

    .contact-info i {
        color: var(--primary);
        margin-top: 5px;
        font-size: 18px;
    }

    .social-links {
        display: flex;
        gap: 15px;
        margin-top: 25px;
    }

    .social-links a {
        width: 40px;
        height: 40px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--white);
        text-decoration: none;
        transition: var(--transition);
    }

    .social-links a:hover {
        background: var(--primary);
        transform: translateY(-3px);
    }

    .copyright {
        text-align: center;
        padding-top: 30px;
        border-top: 1px solid #333;
        color: #888;
        font-size: 0.875rem;
    }

    /* Back to Top Button */
    .back-to-top {
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 50px;
        height: 50px;
        background: var(--primary);
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        text-decoration: none;
        box-shadow: var(--shadow-light);
        transition: var(--transition);
        z-index: 999;
        opacity: 0;
        visibility: hidden;
    }

    .back-to-top.show {
        opacity: 1;
        visibility: visible;
    }

    .back-to-top:hover {
        background: var(--primary-dark);
        transform: translateY(-5px);
    }

    /* ===== Animations ===== */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .animate-fade-in-up {
        animation: fadeInUp 0.6s ease-out;
    }

    .animate-delay-1 {
        animation-delay: 0.2s;
        animation-fill-mode: both;
    }

    .animate-delay-2 {
        animation-delay: 0.4s;
        animation-fill-mode: both;
    }

    .pulse-animation {
        animation: pulse 2s infinite;
    }

    /* ===== Responsive Design ===== */
    @media (max-width: 992px) {
        .mission-vision, .story-section {
            grid-template-columns: 1fr;
            gap: 30px;
        }
        
        .about-hero-inner {
            flex-direction: column;
            text-align: center;
        }
        .about-hero-text {
            max-width: 100%;
        }
        
        .about-hero h1 {
            font-size: 2.5rem;
        }
        
        .main-nav ul {
            gap: 15px;
        }
        
        .team-grid {
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        }
        
        .story-section {
            padding: 40px;
        }
    }

    @media (max-width: 768px) {
        .mobile-menu-btn {
            display: block;
        }
        
        .main-nav {
            position: fixed;
            top: 70px;
            left: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.98);
            padding: 20px;
            box-shadow: var(--shadow);
            transform: translateY(-100%);
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
            border-radius: 0 0 var(--border-radius) var(--border-radius);
        }
        
        .main-nav.active {
            transform: translateY(0);
            opacity: 1;
            visibility: visible;
        }
        
        .main-nav ul {
            flex-direction: column;
            gap: 0;
        }
        
        .main-nav li {
            width: 100%;
        }
        
        .main-nav a {
            padding: 15px;
            border-bottom: 1px solid rgba(65, 191, 193, 0.1);
            justify-content: center;
        }
        
        .main-nav a::after {
            display: none;
        }
        
        .about-hero {
            padding: 80px 0 50px;
        }
        
        .about-hero h1 {
            font-size: 2.2rem;
        }
        
        .about-hero p {
            font-size: 1.125rem;
        }
        
        .section-title {
            font-size: 2.2rem;
        }
        
        .mission-card, .vision-card {
            padding: 30px 20px;
        }
        
        .story-section {
            padding: 30px 20px;
        }
        
        .cta-section h2 {
            font-size: 2.2rem;
        }
    }

    @media (max-width: 576px) {
        .values-grid, .team-grid {
            grid-template-columns: 1fr;
        }
        
        .about-hero h1 {
            font-size: 1.8rem;
        }
        
        .about-hero p {
            font-size: 1rem;
        }
        
        .team-member {
            margin-bottom: 20px;
        }
        
        .section-title {
            font-size: 1.8rem;
        }
        
        .cta-section h2 {
            font-size: 1.8rem;
        }
    }
</style>
</head>

<body>
    <!-- ===== Main Header ===== -->
    <header class="main-header" id="mainHeader">
        <div class="container header-container">
            
            <!-- Logo -->
            <a href="${pageContext.request.contextPath}/index.jsp" class="main-logo">
                <div class="main-logo-img">
                    <i class="fas fa-hospital"></i>
                </div>
                <div class="main-logo-text">
                    <h3>YUVICARE</h3>
                    <p>Complete HIMS Solution</p>
                </div>
            </a>

            <!-- Mobile Menu Button -->
            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navigation -->
            <nav class="main-nav" id="mainNav">
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/home">
                            <i class="fas fa-home"></i> Home
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/product">
                            <i class="fas fa-box-open"></i> About Product
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/aboutus" class="active">
                            <i class="fas fa-info-circle"></i> About Us
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/contactus">
                            <i class="fas fa-phone-alt"></i> Contact
                        </a>
                    </li>
                </ul>
            </nav>
            
            <a href="${pageContext.request.contextPath}/contactus" class="demo-btn">
                <i class="fas fa-play-circle"></i> Request Demo
            </a>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="about-hero">
        <div class="container">
            <div class="about-hero-inner">
                <div class="about-hero-text">
                    <h1>Transforming Healthcare Through Technology</h1>
                    <p>YUVICARE is leading the digital revolution in healthcare management, providing innovative solutions that empower hospitals to deliver exceptional patient care.</p>
                    <a href="#story" class="btn btn-primary">Discover Our Journey</a>
                </div>
                <div class="about-hero-image">
                    <img src="${pageContext.request.contextPath}/views/images/hospital2.jpg" alt="Modern Hospital Care">
                </div>
            </div>
        </div>
    </section>

    <!-- Breadcrumb Navigation -->
    <div class="breadcrumb">
        <div class="container">
            <ul>
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="#" aria-current="page">About Us</a></li>
            </ul>
        </div>
    </div>

    <!-- Main About Content -->
    <div class="about-content">
        <div class="container">
            
            <!-- Mission & Vision Section -->
            <div class="mission-vision">
                <div class="mission-card animate-fade-in-up">
                    <div class="mission-icon">
                        <i class="fas fa-bullseye"></i>
                    </div>
                    <h2>Our Mission</h2>
                    <p>To revolutionize healthcare delivery by providing intelligent, integrated hospital management solutions that enhance patient care, streamline operations, and empower healthcare professionals to focus on what matters most - saving lives.</p>
                    <p>We aim to bridge the gap between technology and healthcare, creating systems that are both powerful and intuitive.</p>
                </div>
                
                <div class="vision-card animate-fade-in-up animate-delay-1">
                    <div class="vision-icon">
                        <i class="fas fa-eye"></i>
                    </div>
                    <h2>Our Vision</h2>
                    <p>To be the leading healthcare technology partner globally, recognized for innovation and excellence in transforming hospital operations through cutting-edge digital solutions.</p>
                    <p>We envision a future where every healthcare institution operates with maximum efficiency, minimal errors, and optimal patient outcomes through intelligent technology.</p>
                </div>
            </div>

            <!-- Core Values Section -->
            <div class="values-section">
                <h2 class="section-title">Our Core Values</h2>
                <div class="values-grid">
                    <div class="value-card animate-fade-in-up">
                        <div class="value-icon">
                            <i class="fas fa-heartbeat"></i>
                        </div>
                        <h3>Patient-Centered</h3>
                        <p>Every feature we build prioritizes patient safety, comfort, and positive outcomes above all else.</p>
                    </div>
                    
                    <div class="value-card animate-fade-in-up animate-delay-1">
                        <div class="value-icon">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <h3>Secure & Compliant</h3>
                        <p>Enterprise-grade security with built-in compliance for NABH, HIPAA, and other healthcare standards.</p>
                    </div>
                    
                    <div class="value-card animate-fade-in-up animate-delay-2">
                        <div class="value-icon">
                            <i class="fas fa-lightbulb"></i>
                        </div>
                        <h3>Innovation Driven</h3>
                        <p>Continuously evolving our platform with the latest healthcare technology trends and best practices.</p>
                    </div>
                    
                    <div class="value-card animate-fade-in-up">
                        <div class="value-icon">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <h3>Partnership Focused</h3>
                        <p>We work alongside our clients as strategic partners in their digital transformation journey.</p>
                    </div>
                     <div class="value-card animate-fade-in-up">
                        <div class="value-icon">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <h3>Partnership Focused</h3>
                        <p>We work alongside our clients as strategic partners in their digital transformation journey.</p>
                    </div>
                     <div class="value-card animate-fade-in-up">
                        <div class="value-icon">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <h3>Partnership Focused</h3>
                        <p>We work alongside our clients as strategic partners in their digital transformation journey.</p>
                    </div>
                </div>
            </div>

            <!-- Our Story Section -->
            <div class="story-section" id="story">
                <div class="story-content">
                    <h2>Our Journey in Healthcare Technology</h2>
                    <p>Founded in 2010 by healthcare professionals and technology experts, YUVICARE began with a simple mission: to solve the complex operational challenges faced by hospitals through intelligent software solutions.</p>
                    <p>What started as a small team developing custom solutions for local hospitals has grown into a comprehensive Hospital Information Management System serving over 500 healthcare institutions across India and expanding globally.</p>
                    <p>Our journey is marked by continuous innovation, deep industry understanding, and an unwavering commitment to improving healthcare delivery through technology.</p>
                    <a href="${pageContext.request.contextPath}/contactus" class="btn btn-primary">Partner With Us</a>
                </div>
                <div class="story-image animate-fade-in-up animate-delay-1">
                    <img src="${pageContext.request.contextPath}/views/images/hospital1.jpg" alt="YUVICARE Team">
                </div>
            </div>

            <!-- Team Section -->
            <div class="team-section">
                <h2 class="section-title">Meet Our Leadership</h2>
                <div class="team-grid">
                    <div class="team-member animate-fade-in-up">
                        <div class="member-header">
                            <div class="member-image">DR</div>
                            <h3>Dr. Rajesh Kumar</h3>
                            <div class="position">Founder & CEO</div>
                        </div>
                        <div class="member-info">
                            <div class="member-details">
                                <p>With over 25 years of experience in healthcare management and technology innovation, Dr. Kumar leads our vision and strategic direction.</p>
                                <ul class="member-qualifications">
                                    <li><i class="fas fa-check-circle"></i> MBBS, MD in Hospital Administration</li>
                                    <li><i class="fas fa-check-circle"></i> Healthcare Technology Expert</li>
                                    <li><i class="fas fa-check-circle"></i> 15+ Publications in Medical Informatics</li>
                                </ul>
                            </div>
                            <div class="member-social">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="team-member animate-fade-in-up animate-delay-1">
                        <div class="member-header">
                            <div class="member-image">AS</div>
                            <h3>Anita Sharma</h3>
                            <div class="position">Chief Technology Officer</div>
                        </div>
                        <div class="member-info">
                            <div class="member-details">
                                <p>Leading our technology initiatives with 20+ years of experience in healthcare IT systems and digital transformation projects.</p>
                                <ul class="member-qualifications">
                                    <li><i class="fas fa-check-circle"></i> M.Tech in Computer Science</li>
                                    <li><i class="fas fa-check-circle"></i> Healthcare IT Specialist</li>
                                    <li><i class="fas fa-check-circle"></i> Cloud Architecture Expert</li>
                                </ul>
                            </div>
                            <div class="member-social">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-github"></i></a>
                                <a href="#"><i class="fas fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="team-member animate-fade-in-up animate-delay-2">
                        <div class="member-header">
                            <div class="member-image">PK</div>
                            <h3>Prof. Mohan Kumar</h3>
                            <div class="position">Medical Director</div>
                        </div>
                        <div class="member-info">
                            <div class="member-details">
                                <p>Leading our clinical advisory board and ensuring our solutions meet the highest medical standards and compliance requirements.</p>
                                <ul class="member-qualifications">
                                    <li><i class="fas fa-check-circle"></i> MBBS, MS in General Surgery</li>
                                    <li><i class="fas fa-check-circle"></i> NABH Accreditation Expert</li>
                                    <li><i class="fas fa-check-circle"></i> Clinical Process Specialist</li>
                                </ul>
                            </div>
                            <div class="member-social">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CTA Section -->
            <div class="cta-section">
                <h2>Ready to Transform Your Hospital?</h2>
                <p>Join hundreds of healthcare institutions that have revolutionized their operations with YUVICARE. Schedule a personalized demo to see how our platform can work for your hospital.</p>
                <a href="${pageContext.request.contextPath}/contactus" class="btn">Request a Demo</a>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <h3>YUVICARE HIMS</h3>
                    <p style="color: #ffffff; margin-bottom: 20px; line-height: 1.7;">Complete Hospital Information Management System designed for modern healthcare institutions to deliver exceptional patient care with operational excellence.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="${pageContext.request.contextPath}/home"><i class="fas fa-chevron-right"></i> Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/aboutproduct"><i class="fas fa-chevron-right"></i> About Product</a></li>
                        <li><a href="${pageContext.request.contextPath}/aboutus"><i class="fas fa-chevron-right"></i> About Us</a></li>
                        <li><a href="${pageContext.request.contextPath}/contactus"><i class="fas fa-chevron-right"></i> Contact</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Our Products</h3>
                    <ul class="footer-links">
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE HIMS Pro</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Clinic</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Diagnostics</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Pharmacy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Telemedicine</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Contact Us</h3>
                    <ul class="contact-info">
                        <li>
                            <i class="fas fa-map-marker-alt"></i>
                            <div>
                                <strong>Head Office</strong>
                                <p>123 Healthcare Street, Medical District, City - 560001</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-phone"></i>
                            <div>
                                <strong>Phone</strong>
                                <p>+91 98765 43210</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <div>
                                <strong>Email</strong>
                                <p>info@yuvicare.com</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-clock"></i>
                            <div>
                                <strong>Support Hours</strong>
                                <p>24/7 Support Available</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>© 2025 YUVICARE Hospital Information Management System. All rights reserved. | <a href="#" style="color: var(--primary);">Privacy Policy</a> | <a href="#" style="color: var(--primary);">Terms of Service</a></p>
            </div>
        </div>
    </footer>

    <!-- Back to Top Button -->
    <a href="#" class="back-to-top" id="backToTop">
        <i class="fas fa-chevron-up"></i>
    </a>

    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const mainNav = document.getElementById('mainNav');
        
        mobileMenuBtn.addEventListener('click', () => {
            mainNav.classList.toggle('active');
            mobileMenuBtn.innerHTML = mainNav.classList.contains('active') 
                ? '<i class="fas fa-times"></i>' 
                : '<i class="fas fa-bars"></i>';
        });
        
        // Close mobile menu when clicking a link
        document.querySelectorAll('#mainNav a').forEach(link => {
            link.addEventListener('click', () => {
                mainNav.classList.remove('active');
                mobileMenuBtn.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });
        
        // Back to Top Button
        const backToTop = document.getElementById('backToTop');
        
        window.addEventListener('scroll', () => {
            if (window.scrollY > 300) {
                backToTop.classList.add('show');
            } else {
                backToTop.classList.remove('show');
            }
        });
        
        backToTop.addEventListener('click', (e) => {
            e.preventDefault();
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
        
        // Animate elements on scroll
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animate-fade-in-up');
                    observer.unobserve(entry.target);
                }
            });
        }, observerOptions);

        // Observe all elements that should animate
        document.querySelectorAll('.mission-card, .vision-card, .value-card, .team-member, .story-image').forEach(el => {
            observer.observe(el);
        });
        
        // Header scroll effect
        window.addEventListener('scroll', () => {
            const header = document.getElementById('mainHeader');
            
            if (window.scrollY > 100) {
                header.style.boxShadow = '0 4px 12px rgba(0, 0, 0, 0.1)';
            } else {
                header.style.boxShadow = '0 4px 12px rgba(0, 0, 0, 0.08)';
            }
        });
        
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                const targetId = this.getAttribute('href');
                if(targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if(targetElement) {
                    e.preventDefault();
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                }
            });
        });
    </script>
</body>
</html>
