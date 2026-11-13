
 

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
    
    
    
    /* Common dropdown parent */
.main-nav li.has-submenu {
	position: relative;
}

/* First dropdown: Product Overview */
.main-nav>ul>li.has-submenu>ul.submenu {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	min-width: 260px;
	background: #fff;
	padding: 8px 0;
	margin: 0;
	list-style: none;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .15);
	border-radius: 6px;
	z-index: 9999;
}

/* Second dropdown: OPD submenu */
.main-nav ul.submenu li.has-submenu>ul.submenu {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	min-width: 230px;
	background: #fff;
	padding: 8px 0;
	margin: 0;
	list-style: none;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .15);
	border-radius: 6px;
	z-index: 10000;
}

/* Open dropdown only when clicked */
.main-nav li.has-submenu.active>ul.submenu {
	display: block !important;
}

/* Dropdown links */
.main-nav ul.submenu li {
	display: block;
	width: 100%;
}

.main-nav ul.submenu li a {
	display: block;
	padding: 10px 15px;
	color: #333;
	white-space: nowrap;
	text-decoration: none;
}

.main-nav ul.submenu li a:hover {
	background: #e0f2f1;
	color: #008b8b;
}

/* Prevent dropdown clipping */
.main-header, .header-container, .main-nav {
	overflow: visible;
}

.main .page {
	scroll-margin-top: 100px;
}

.submenu a.selected-menu {
	background: #e8f3ff !important;
	color: #0877c9 !important;
	font-weight: 700;
}

/* ===== MAIN CONTENT ===== */
.main {
    min-height: 10;
    height: auto;
    padding: 0;
    margin: 0;
    background: #f4f7fb;
    box-sizing: border-box;
}

/* ===== PAGE CONTAINER ===== */
.main .page {
	display: none;
	max-width: 1450px;
	margin: 0 auto;
	animation: fadeIn 0.35s ease-in-out;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* ===== PAGE TITLE ===== */
.page-title {
	font-size: 27px;
	font-weight: 700;
	color: #183b65;
	margin: 0 0 28px;
	padding: 0 0 15px;
	border-bottom: 2px solid #e2eaf3;
	position: relative;
}

.page-title:after {
	content: "";
	position: absolute;
	bottom: -2px;
	left: 0;
	width: 65px;
	height: 3px;
	background: #1685d4;
	border-radius: 5px;
}

/* ===== FEATURE SECTION CARD ===== */
.main .section {
	background: #ffffff;
	border: 1px solid #e5ebf2;
	border-radius: 12px;
	margin-bottom: 25px;
	overflow: hidden;
	box-shadow: 0 3px 12px rgba(30, 60, 90, 0.06);
	transition: box-shadow 0.25s ease, transform 0.25s ease;
}

.main .section:hover {
	box-shadow: 0 7px 20px rgba(30, 60, 90, 0.10);
	transform: translateY(-2px);
}

/* ===== SECTION HEADER ===== */
.section-header {
	background: #edf5fc;
	color: #174d7a;
	font-size: 17px;
	font-weight: 700;
	padding: 16px 22px;
	border-bottom: 1px solid #dce9f5;
	border-left: 4px solid #1685d4;
}

/* ===== SECTION DESCRIPTION ===== */
.section-list {
	padding: 15px 25px 5px 45px;
	margin: 0;
	color: #526477;
	font-size: 14px;
	line-height: 1.7;
}

.section-list li {
	padding-left: 5px;
	margin-bottom: 5px;
}

/* ===== IMAGE CONTENT ===== */
.section-content {
	padding: 22px;
	background: #ffffff;
}

.section-content.text-center {
	text-align: center;
}

.section-content img {
	display: block;
	max-width: 100%;
	height: auto;
	margin: 0 auto;
	border: 1px solid #e4eaf1;
	border-radius: 8px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
}

/* ===== DIVIDER ===== */
.main .divider {
	height: 1px;
	background: #e5ebf2;
	margin: 25px 5px;
}

/* ===== RESPONSIVE DESIGN ===== */
@media ( max-width : 768px) {
	.main {
		padding: 18px 12px;
	}
	.page-title {
		font-size: 22px;
	}
	.section-header {
		font-size: 15px;
		padding: 13px 15px;
	}
	.section-content {
		padding: 12px;
	}
	.section-list {
		padding-left: 35px;
		padding-right: 15px;
	}
}

.main-nav li.has-submenu {
	position: relative;
}

.main-nav li.has-submenu>.submenu {
	display: none;
}

.main-nav li.has-submenu.active>.submenu {
	display: block !important;
}
</style>
</head>

<body>
  <!-- ===== Main Header ===== -->
	<header class="main-header" id="mainHeader">
		<div class="container header-container">
			<a href="#home" class="main-logo">

				<div class="main-logo-text">
					<img src="views/images/Manas_Yuvicare_Teal_Logo.png" height="50"
						width="150" style="background-color: white;">
				</div>
			</a>

			<button class="mobile-menu-btn" id="mobileMenuBtn">
				<i class="fas fa-bars"></i>
			</button>

			<nav class="main-nav" id="mainNav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/home"> <i class="fas fa-home"></i> Home
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus" class="active">
							<i class="fas fa-cogs"></i> About Us
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutproduct">
							<i class="fas fa-th-large"></i> About Product
					</a></li>


				
<!-- Product Overview -->
<li class="has-submenu">
    <a href="#" onclick="toggleSubmenu(event, this)">
        <i class="fas fa-th-large"></i>
        Product Overview
        <i class="fa fa-chevron-down"></i>
    </a>

    <!-- Product Overview Dropdown -->
    <ul class="submenu">
        
        
        <li><a href="#" onclick="showPage('main-dashboard'); return false;" >Main Dashboard</a>
        <!-- OPD Dropdown -->
        <li class="has-submenu">
            <a href="#" onclick="toggleSubmenu(event, this)">
                OPD (Out-Patient Department)
                <i class="fa fa-chevron-down"></i>
            </a>

            <ul class="submenu">
                <li><a href="#" onclick="showPage('opd-dashboard'); return false;">OPD</a></li>
                <li><a href="#" onclick="showPage('appointment'); return false;">Appointment Finder</a></li>
                <li><a href="#" onclick="showPage('vaccination'); return false;">Vaccination</a></li>
                <li><a href="#" onclick="showPage('prescription'); return false;">Prescription</a></li>
                <li><a href="#" onclick="showPage('emr'); return false;">EMR</a></li>
                <li><a href="#" onclick="showPage('tele-medicine'); return false;">Tele-Medicine</a></li>
            </ul>
        </li>

<!-- IPD Dropdown -->
<li class="has-submenu">
    <a href="#" onclick="toggleSubmenu(event, this)">
        IPD (In-Patient Department)
        <i class="fa fa-chevron-down"></i>
    </a>

    <ul class="submenu">
        <li>
            <a href="#" onclick="showPage('ipd-dashboard'); return false;">
                IPD Dashboard
            </a>
        </li>

        <li>
            <a href="#" onclick="showPage('operation-theatre'); return false;">
                OT (Operation Theatre)
            </a>
        </li>

        <li>
            <a href="#" onclick="showPage('casualty'); return false;">
                Casualty
            </a>
        </li>

        <li>
            <a href="#" onclick="showPage('visiting-consultant'); return false;">
                Visiting Consultant
            </a>
        </li>

        <li>
            <a href="#" onclick="showPage('ipd-emr'); return false;">
                EMR
            </a>
        </li>

        <li>
            <a href="#" onclick="showPage('discharge'); return false;">
                Discharge
            </a>
        </li>
    </ul>
</li>


<li class="has-submenu">
    <a href="#" onclick="toggleSubmenu(event, this)">
        Investigation
        <i class="fa fa-chevron-down"></i>
    </a>

    <ul class="submenu">
        <li>
            <a href="#" onclick="showPage('investigation'); return false;">
                <i class="fa fa-flask"></i>
                Investigation
            </a>
        </li>
        <li>
            <a href="#" onclick="showPage('analytics'); return false;">
                <i class="fa fa-chart-line"></i>
                Analytics
            </a>
        </li>
        <li>
            <a href="#" onclick="showPage('pacs'); return false;">
                <i class="fa fa-x-ray"></i>
                PACS
            </a>
        </li>
    </ul>
</li>



<li class="has-submenu">
    <a href="javascript:void(0);" onclick="toggleSubmenu(event, this)">
        <span>
            <!-- <i class="fas fa-clinic-medical"></i> -->
            Store & Pharmacy
        </span>
        <i class="fa fa-chevron-down submenu-arrow"></i>
    </a>

    <ul class="submenu">
        <li>
            <a href="javascript:void(0);" onclick="showPage('inventory')">
                <i class="fas fa-boxes"></i>
                Inventory
            </a>
        </li>

        <li>
            <a href="javascript:void(0);" onclick="showPage('pharmacy')">
                <i class="fas fa-pills"></i>
                Pharmacy
            </a>
        </li>

        <li>
            <a href="javascript:void(0);" onclick="showPage('indent')">
                <i class="fas fa-file-invoice"></i>
                Indent Management
            </a>
        </li>
    </ul>
</li>


<!-- Account Section -->
<li class="has-submenu">
    <a href="javascript:void(0)" onclick="toggleSubmenu(event, this)">
       <!--  <i class="fas fa-wallet"></i> -->
        <span>Account</span>
        <i class="fa fa-chevron-down submenu-arrow"></i>
    </a>

    <ul class="submenu">
        <li>
            <a href="javascript:void(0)" onclick="showPage('account')">
                <i class="fas fa-chart-pie"></i>
                Account
            </a>
        </li>

        <li>
            <a href="javascript:void(0)" onclick="showPage('refund_request')">
                <i class="fas fa-undo-alt"></i>
                Refund Request Dashboard
            </a>
        </li>

        <li>
            <a href="javascript:void(0)" onclick="showPage('discount_request')">
                <i class="fas fa-tags"></i>
                Discount Request Dashboard
            </a>
        </li>

        <li>
            <a href="javascript:void(0)" onclick="showPage('tpa')">
                <i class="fas fa-handshake"></i>
                TPA Management
            </a>
        </li>
    </ul>
</li>

    </ul>
</li>


					<li><a href="${pageContext.request.contextPath}/contactus">
							<i class="fas fa-users"></i> Contact Us
					</a></li>
				</ul>
			</nav>
		</div>
	</header>

    <!-- Hero Section -->
    <section class="about-hero">
        <div class="container">
            <div class="about-hero-inner">
                <div class="about-hero-text">
                    <h1>Transforming Healthcare Through Technology</h1>
<!--                     <p>YUVICARE is leading the digital revolution in healthcare management, providing innovative solutions that empower hospitals to deliver exceptional patient care.</p>
 -->                   
 
 
                    <p>Manas Agro Industries & Infrastructure Ltd is a MULTI SEGMENT deemed public limited company registered in India with  sale revenue of about INR 650 Crores (USD 88 Million approx.).</p>
                    <p>It has recently commenced its services in the healthcare industry by introducing a Hospital Information Management system under the name & style of “YUVICARE”.</p>
                    <p>For more details visit website (Link)</p>
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




	<!-- MAIN CONTENT -->
	<div class="main">
	
	
	
		<div class="page" id="main-dashboard" style="display: none;">
			<h1 class="page-title">Main Dashboard</h1>

			<!-- 1. OPD Dashboard -->
			<div class="section">
				<div class="section-header">Login</div>
				<ul class="section-list">
					<li>This is the first page where user lands after logging in the system.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/login.png"
						alt="Main Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- 2. Book Appointment -->
			<div class="section">
				<div class="section-header">Main Dashobard</div>
				<ul class="section-list">
					<li>It displays the icons of various modules.</li>
					<li>The user can see  icons for only those modules to which he has an access.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/maindashboard.png"
						alt="Book Appointment" />
				</div>
			</div>


		</div>
	
		<!-- OPD Dashboard -->
		<div class="page" id="opd-dashboard" style="display: none;">
			<h1 class="page-title">OPD Overview</h1>

			<!-- 1. OPD Dashboard -->
			<div class="section">
				<div class="section-header">OPD Dashboard</div>
				<ul class="section-list">
					<li>Overview of Out-Patient Department activities.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/opd.png"
						alt="OPD Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- 2. Book Appointment -->
			<div class="section">
				<div class="section-header">Book Appointment</div>
				<ul class="section-list">
					<li>Schedule new appointments for patients.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/book.png"
						alt="Book Appointment" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- 3. Receipt Entry -->
			<div class="section">
				<div class="section-header">Receipt Entry</div>
				<ul class="section-list">
					<li>Manage payments and receipts.</li>
				</ul>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/payment.png"
						alt="Receipt Entry" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- 4. OPD Invoice -->
			<div class="section">
				<div class="section-header">OPD Invoice</div>
				<ul class="section-list">
					<li>Generate and view invoices.</li>
				</ul>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/invoice.png"
						alt="OPD Invoice" />
				</div>
			</div>
		</div>

		<!-- Appointment Finder -->
		<div class="page" id="appointment" style="display: none;">
			<h1 class="page-title">Appointment Finder</h1>

			<div class="section">
				<div class="section-header">Appointment Finder Dashboard</div>
				<ul class="section-list">
					<li>View and search booked appointments.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/ap.png"
						alt="Appointment Finder">
				</div>
			</div>
		</div>

		<!-- Vaccination -->
		<div class="page" id="vaccination" style="display: none;">
			<h1 class="page-title">Vaccination</h1>

			<div class="section">
				<div class="section-header">Vaccination Dashboard</div>
				<ul class="section-list">
					<li>Manage vaccination schedules and records.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/vd.png"
						alt="Vaccination Dashboard">
				</div>
			</div>

			<div class="divider"></div>

			<div class="section">
				<div class="section-header">Vaccination Table</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/vt.png"
						alt="Vaccination Table">
				</div>
			</div>
		</div>

		<!-- Prescription -->
		<div class="page" id="prescription" style="display: none;">
			<h1 class="page-title">Prescription</h1>

			<!-- Prescription Dashboard -->
			<div class="section">
				<div class="section-header">Prescription Dashboard</div>
				<ul class="section-list">
					<li>Overview of prescriptions.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/dp.png"
						alt="Prescription Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Prescription Details -->
			<div class="section">
				<div class="section-header">Prescription Details</div>
				<ul class="section-list">
					<li>Detailed view of prescriptions.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/id.png"
						alt="Prescription Details" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Prescription Note -->
			<div class="section">
				<div class="section-header">Prescription Note</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/np.png"
						alt="Prescription Note" />
				</div>
			</div>
		</div>

		<!-- EMR (Electronic Medical Records) -->
		<div class="page" id="emr" style="display: none;">
			<h1 class="page-title">EMR (Electronic Medical Records)</h1>

			<!-- Dashboard -->
			<div class="section">
				<div class="section-header">EMR Dashboard</div>
				<ul class="section-list">
					<li>Electronic Medical Records overview.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/ed.png"
						alt="EMR Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Update Notes -->
			<div class="section">
				<div class="section-header">Update Notes</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/ppp.png"
						alt="Update Notes" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Consultation Note -->
			<div class="section">
				<div class="section-header">Consultation Note</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/p4.png"
						alt="Consultation Note" />
				</div>
			</div>
		</div>

		<!-- Tele-Medicine -->
		<div class="page" id="tele-medicine" style="display: none;">
			<h1 class="page-title">Tele-Medicine</h1>

			<!-- Dashboard -->
			<div class="section">
				<div class="section-header">Tele-Medicine Dashboard</div>
				<ul class="section-list">
					<li>Remote consultation overview.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/td.png"
						alt="Tele-Medicine Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Tele Consultation Note -->
			<div class="section">
				<div class="section-header">Tele Consultation Note</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/tn.png"
						alt="Tele Consultation Note" />
				</div>
			</div>
		</div>

		<!-- Investigation -->
		<div class="page" id="investigation" style="display: none;">
			<h1 class="page-title">Investigation</h1>

			<!-- Investigation Dashboard -->
			<div class="section">
				<div class="section-header">Investigation Dashboard</div>
				<ul class="section-list">
					<li>To prepare/save Investigation for patient.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/id.png"
						alt="Investigation Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Add New Patient -->
			<div class="section">
				<div class="section-header">Add New Patient</div>
				<ul class="section-list">
					<li>Register new patient for investigation.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/an.png"
						alt="Add New Patient" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Update Report Investigation (Observation Values) -->
			<div class="section">
				<div class="section-header">Update Report Investigation
					(Observation Values)</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/up.png"
						alt="Update Report Investigation" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Update Report Investigation (Description) -->
			<div class="section">
				<div class="section-header">Update Report Investigation
					(Description)</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/upi.png"
						alt="Update Report Description" />
				</div>
			</div>
		</div>

		<!-- Analytics -->
		<div class="page" id="analytics" style="display: none;">
			<h1 class="page-title">Analytics</h1>

			<div class="section">
				<div class="section-header">Analytics Dashboard</div>
				<ul class="section-list">
					<li>Analytics Filters</li>
					<li>Analytics Results</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/ana.png"
						alt="Analytics Dashboard" />
				</div>
			</div>
		</div>

		<!-- PACS -->
		<div class="page" id="pacs" style="display: none;">
			<h1 class="page-title">PACS</h1>

			<div class="section">
				<div class="section-header">PACS Dashboard</div>
				<ul class="section-list">
					<li>Picture Archiving and Communication System.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pac.png"
						alt="PACS Dashboard" />
				</div>
			</div>
		</div>

		<!-- Inventory -->
		<div class="page" id="inventory" style="display: none;">
			<h1 class="page-title">Inventory</h1>

			<!-- Procurement Dashboard -->
			<div class="section">
				<div class="section-header">Procurement Dashboard</div>
				<ul class="section-list">
					<li>Manage procurement and stock.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pi.png"
						alt="Procurement Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- GRN with PO -->
			<div class="section">
				<div class="section-header">GRN with PO</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/po.png"
						alt="GRN with PO" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Good Received -->
			<div class="section">
				<div class="section-header">Good Received</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/gn.png"
						alt="Good Received" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Good Receipt Note -->
			<div class="section">
				<div class="section-header">Good Receipt Note</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/gr.png"
						alt="Good Receipt Note" />
				</div>
			</div>
		</div>

		<!-- Pharmacy -->
		<div class="page" id="pharmacy" style="display: none;">
			<h1 class="page-title">Pharmacy</h1>

			<!-- Request Prescription Dashboard -->
			<div class="section">
				<div class="section-header">Request Prescription Dashboard</div>
				<ul class="section-list">
					<li>View and manage prescription requests.</li>
				</ul>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pi.png"
						alt="Request Prescription Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Pharmacy Sale -->
			<div class="section">
				<div class="section-header">Pharmacy Sale</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pr.png"
						alt="Pharmacy Sale" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Pharmacy Dashboard -->
			<div class="section">
				<div class="section-header">Pharmacy Dashboard</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pd.png"
						alt="Pharmacy Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Pharmacy Invoice -->
			<div class="section">
				<div class="section-header">Pharmacy Invoice</div>
				<div class="section-content text-center">
					<img src="${pageContext.request.contextPath}/views/images/pi2.png"
						alt="Pharmacy Invoice" />
				</div>
			</div>
		</div>

		<!-- Indent -->
		<div class="page" id="indent" style="display: none;">
			<h1 class="page-title">Indent</h1>

			<!-- Indent Dashboard -->
			<div class="section">
				<div class="section-header">Indent Dashboard</div>
				<ul class="section-list">
					<li>Manage indent requests and approvals.</li>
				</ul>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/indent 1.png"
						alt="Indent Dashboard" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Indent Popup -->
			<div class="section">
				<div class="section-header">Indent Popup</div>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/indent2.png"
						alt="Indent Popup" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Indent Approval -->
			<div class="section">
				<div class="section-header">Indent Approval</div>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/indent3.png"
						alt="Indent Approval" />
				</div>
			</div>

			<div class="divider"></div>

			<!-- Indent Approval / Rejection Note -->
			<div class="section">
				<div class="section-header">Indent Approval / Rejection Note</div>
				<div class="section-content text-center">
					<img
						src="${pageContext.request.contextPath}/views/images/indent4.png"
						alt="Indent Approval / Rejection Note" />
				</div>
			</div>
		</div>
	
	<!-- End Main -->
	
	
	
	
	
	        <!-- MAIN CONTENT -->
          
<!-- IPD DASHBOARD PAGE -->
<div class="page ipd-page" id="ipd-dashboard" style="display:none;">

    <!-- IPD PAGE HEADER -->
    <div class="ipd-page-header">
        <div class="ipd-header-icon">
            <i class="fas fa-procedures"></i>
        </div>

        <div>
            <h2>IPD Management</h2>
            <p>
                In-Patient Department – Manage admissions, beds,
                patient care and discharge procedures.
            </p>
        </div>
    </div>

    <!-- IPD OVERVIEW -->
    <div class="ipd-intro-card">
        <div class="ipd-intro-heading">
            <i class="fas fa-hospital"></i>
            <h3>In-Patient Department Overview</h3>
        </div>

        <p>
            Manage comprehensive in-patient services, bed availability,
            patient admissions, prescriptions, investigations and
            discharge procedures through an integrated system.
        </p>
    </div>

    <!-- 1. IPD DASHBOARD -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">01</span>
            <div>
                <h3><i class="fas fa-columns"></i> IPD Dashboard</h3>
                <p>Complete overview of hospital IPD activities.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Get a categorized, at-a-glance view of hospital IPD.</li>
            <li>Monitor occupied beds and vacant beds.</li>
            <li>Manage general, insured and third-party patients.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/1 12.png"
                 alt="IPD Dashboard Overview" loading="lazy">
        </div>
    </div>

    <!-- 2. BED STATUS -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">02</span>
            <div>
                <h3><i class="fas fa-bed"></i> Bed Status</h3>
                <p>Monitor bed occupancy and availability.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>View information about occupied beds.</li>
            <li>Access important medical and administrative functions with a single click on the relevant icon.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/2 11.png"
                 alt="Bed Status Overview" loading="lazy">
        </div>
    </div>

    <!-- 3. IPD PATIENT DASHBOARD -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">03</span>
            <div>
                <h3><i class="fas fa-user-injured"></i> IPD Patient Dashboard</h3>
                <p>Access and manage IPD patient functionalities.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>View all the IPD functionalities.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/3 7.png"
                 alt="IPD Patient Dashboard Overview" loading="lazy">
        </div>
    </div>

    <!-- 4. PATIENT ADMISSION -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">04</span>
            <div>
                <h3><i class="fas fa-file-medical-alt"></i> Patient Admission Form</h3>
                <p>Manage patient information during IPD admission.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Manage patient information required for IPD admission.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/4 5.png"
                 alt="Patient Admission Overview" loading="lazy">
        </div>
    </div>

    <!-- 5. PRESCRIPTION -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">05</span>
            <div>
                <h3><i class="fas fa-prescription"></i> Prescription</h3>
                <p>Manage patient prescriptions.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Prepare and save prescriptions for patients.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/5 5.png"
                 alt="Prescription Overview" loading="lazy">
        </div>
    </div>

    <!-- 6. INVESTIGATION -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">06</span>
            <div>
                <h3><i class="fas fa-microscope"></i> Investigation</h3>
                <p>Manage patient investigations.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Prepare and save investigations for patients.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/6 3.png"
                 alt="Investigation Overview" loading="lazy">
        </div>
    </div>

    <!-- 7. AUTO CHARGES -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">07</span>
            <div>
                <h3><i class="fas fa-file-invoice-dollar"></i> Auto Charges</h3>
                <p>Automated calculation of recurring service charges.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Define fixed charges for services provided on a per-day basis and have them charged automatically.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/7 2.png"
                 alt="Auto Charges Overview" loading="lazy">
        </div>
    </div>

    <!-- 8. DISCHARGE STATUS -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">08</span>
            <div>
                <h3><i class="fas fa-door-open"></i> Discharge Status</h3>
                <p>Track patient discharge progress.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Check and view the discharge status of patients.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/8 2.png"
                 alt="Discharge Status Overview" loading="lazy">
        </div>
    </div>

    <!-- 9. DISCHARGE FORM -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">09</span>
            <div>
                <h3><i class="fas fa-file-signature"></i> Discharge Form</h3>
                <p>Manage patient discharge information.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>Enter the information required to initiate patient discharge.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/9 2.png"
                 alt="Discharge Form Overview" loading="lazy">
        </div>
    </div>

    <!-- 10. DECLARATION FORM -->
    <div class="ipd-section-card">
        <div class="ipd-section-heading">
            <span class="ipd-number">10</span>
            <div>
                <h3><i class="fas fa-file-contract"></i> Declaration Form</h3>
                <p>Patient consent and declaration management.</p>
            </div>
        </div>

        <ul class="ipd-feature-list">
            <li>View the requisite forms for recording patient consent before a medical procedure.</li>
        </ul>

        <div class="ipd-image-container">
            <img src="${pageContext.request.contextPath}/views/images/10 2.png"
                 alt="Declaration Form Overview" loading="lazy">
        </div>
    </div>

    <!-- FOOTER -->
    <div class="ipd-footer">
        Copyright © 2021. All Rights Reserved by
        Manas Agro Industries and Infrastructure Limited
    </div>

</div>
<!-- END IPD DASHBOARD PAGE -->




<!-- OT (Operation Theatre) Page -->
<div class="page ot-page" id="operation-theatre" style="display:none;">

    <!-- Page Header -->
    <div class="ot-page-header">
        <div class="ot-header-icon">
            <i class="fas fa-procedures"></i>
        </div>
        <div>
            <h2>OT (Operation Theatre)</h2>
            <p>Operation Theatre Management</p>
        </div>
    </div>

    <!-- Introduction Card -->
    <div class="ot-intro-card">
        <h3 class="ot-intro-heading">
            <i class="fas fa-hospital"></i>
            Operation Theatre Overview
        </h3>
        <p>
            Manage Operation Theatre schedules, bookings, patient details,
            surgical notes, and procedure-related activities efficiently
            through the OT Management module.
        </p>
    </div>

    <!-- 01. OT Dashboard -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">01</span>
            <h3><i class="fas fa-tachometer-alt"></i> OT Dashboard</h3>
        </div>

        <ul class="ot-feature-list">
            <li>View OT booking schedule.</li>
            <li>Initiate booking.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/ot dashboard.png"
                 alt="OT Dashboard Overview">
        </div>
    </div>

    <!-- 02. Book Appointment -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">02</span>
            <h3><i class="fas fa-calendar-plus"></i> Book Appointment</h3>
        </div>

        <ul class="ot-feature-list">
            <li>Enter information for booking the OT.</li>
            <li>Book OT for a patient.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/ot book appointment.png"
                 alt="OT Booking Overview">
        </div>
    </div>

    <!-- 03. OT Patient Dashboard -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">03</span>
            <h3><i class="fas fa-user-injured"></i> OT Patient Dashboard</h3>
        </div>

        <ul class="ot-feature-list">
            <li>View OT-related details for a patient.</li>
            <li>Manage OT functions and workflow.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/ot patient dashboard.png"
                 alt="OT Patient Dashboard Overview">
        </div>
    </div>

    <!-- 04. Operation Notes -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">04</span>
            <h3><i class="fas fa-clipboard-list"></i> Operation Notes</h3>
        </div>

        <ul class="ot-feature-list">
            <li>Maintain OT surgical notes and procedure details.</li>
            <li>Upload OT images and capture procedure videos.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/operation notes.png"
                 alt="Operation Notes Overview">
        </div>
    </div>

    <!-- Footer -->
    <div class="ot-footer">
        Copyright © 2021. All Rights Reserved by Manas Agro Industries
        and Infrastructure Limited
    </div>

</div>



<!-- Casualty Page -->
<div class="page ot-page" id="casualty" style="display:none;">

    <!-- Page Header -->
    <div class="ot-page-header">
        <div class="ot-header-icon">
            <i class="fas fa-ambulance"></i>
        </div>
        <div>
            <h2>Casualty</h2>
            <p>Emergency and Casualty Management</p>
        </div>
    </div>

    <!-- Introduction Card -->
    <div class="ot-intro-card">
        <h3 class="ot-intro-heading">
            <i class="fas fa-heartbeat"></i>
            Casualty Management Overview
        </h3>
        <p>
            Manage emergency admissions, patient shifts, and casualty services.
            Monitor bed availability, manage casualty patients, and transfer
            patients from casualty to the IPD department.
        </p>
    </div>

    <!-- 01. Casualty Dashboard -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">01</span>
            <h3>
                <i class="fas fa-heartbeat"></i>
                Casualty Dashboard
            </h3>
        </div>

        <ul class="ot-feature-list">
            <li>Get categorized, at-a-glance view of beds.</li>
            <li>View occupied beds and vacant beds.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/casuality dashboard.png"
                 alt="Casualty Dashboard Overview">
        </div>
    </div>

    <!-- 02. Casualty Patient Dashboard -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">02</span>
            <h3>
                <i class="fas fa-procedures"></i>
                Casualty Patient Dashboard
            </h3>
        </div>

        <ul class="ot-feature-list">
            <li>Manage casualty patient services.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/casuality patient dashboard.png"
                 alt="Casualty Patient Dashboard Overview">
        </div>
    </div>

    <!-- 03. Shift Patient Popup -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">03</span>
            <h3>
                <i class="fas fa-exchange-alt"></i>
                Shift Patient Popup
            </h3>
        </div>

        <ul class="ot-feature-list">
            <li>Shift patient from casualty to IPD.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/casuality patient popup.png"
                 alt="Shift Patient Overview">
        </div>
    </div>

    <!-- Footer -->
    <div class="ot-footer">
        Copyright © 2021. All Rights Reserved by Manas Agro Industries
        and Infrastructure Limited
    </div>

</div>



<!-- Visiting Consultant Page -->
<div class="page ot-page" id="visiting-consultant" style="display:none;">

    <!-- Page Header -->
    <div class="ot-page-header">
        <div class="ot-header-icon">
            <i class="fas fa-user-md"></i>
        </div>
        <div>
            <h2>Visiting Consultant</h2>
            <p>Visiting Consultant Management</p>
        </div>
    </div>

    <!-- Introduction Card -->
    <div class="ot-intro-card">
        <h3 class="ot-intro-heading">
            <i class="fas fa-user-md"></i>
            Visiting Consultant Overview
        </h3>
        <p>
            Manage visiting consultants, their schedules, and profiles.
            Maintain consultant information and access the complete list
            of visiting consultants through this module.
        </p>
    </div>

    <!-- 01. Visiting Consultant Dashboard -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">01</span>
            <h3>
                <i class="fas fa-users-cog"></i>
                Visiting Consultant Dashboard
            </h3>
        </div>

        <ul class="ot-feature-list">
            <li>View complete list of visiting consultants.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/visting consultant dashboard.png"
                 alt="Visiting Consultant Dashboard">
        </div>
    </div>

    <!-- 02. Add Visiting Consultant -->
    <div class="ot-section-card">
        <div class="ot-section-heading">
            <span class="ot-number">02</span>
            <h3>
                <i class="fas fa-user-plus"></i>
                Add Visiting Consultant
            </h3>
        </div>

        <ul class="ot-feature-list">
            <li>Add and manage consultant details.</li>
        </ul>

        <div class="ot-image-container">
            <img src="${pageContext.request.contextPath}/views/images/visiting consultant dashboard2.png"
                 alt="Add Visiting Consultant">
        </div>
    </div>

    <!-- Footer -->
    <div class="ot-footer">
        Copyright © 2021. All Rights Reserved by Manas Agro Industries
        and Infrastructure Limited
    </div>

</div>


<!-- EMR Page -->
<div class="page opd-page" id="ipd-emr" style="display: none;">

    <!-- Title Section -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-notes-medical"></i>
            EMR (Electronic Medical Records)
        </h2>

        <p style="color: var(--medium-text); font-size: 16px; margin-top: 10px; line-height: 1.6;">
            Digital access to patient records, diagnosis, and treatment history.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- 1. EMR Dashboard -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-chart-bar"></i>
            EMR Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View complete patient visit history.</li>
                <li>Manage treatment records in one place.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/EMR dashboard.png"
                 alt="EMR Dashboard Overview" />
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 2. Update Notes -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-edit"></i>
            Update Notes
        </h3>

        <div class="section-description">
            <ul>
                <li>Record doctor consultation notes.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/EMR diagnosis.png"
                 alt="Update Notes Overview" />
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 3. Consultation Notes -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-history"></i>
            Consultation Notes
        </h3>

        <div class="section-description">
            <ul>
                <li>View and print consultation history.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/EMR Demo.png"
                 alt="Consultation Notes Overview" />
        </div>
    </div>

    <!-- Footer -->
    <div style="text-align: center; font-size: 11px; color: var(--medium-text); margin-top: 40px; padding: 20px;">
        Copyright © 2021. All Rights Reserved by Manas Agro Industries and Infrastructure Limited
    </div>

</div>



<!-- DISCHARGE MANAGEMENT PAGE -->
<div class="page" id="discharge" style="display:none;">

    <!-- Page Header -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-door-open"></i>
            Discharge Management
        </h2>

        <p style="color: var(--medium-text); font-size: 16px; margin-top: 10px; line-height: 1.6;">
            Handle patient discharges, manage discharge information
            and generate comprehensive discharge summaries.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- 01. Discharge Dashboard -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-chart-line"></i>
            Discharge Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View patients who are ready for discharge.</li>
                <li>Monitor and update patient discharge details.</li>
                <li>Track the discharge process and patient status.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/Discharge dashboard.png"
                alt="Discharge Dashboard Overview"
                loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 02. Discharge Summary -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-file-alt"></i>
            Discharge Summary
        </h3>

        <div class="section-description">
            <ul>
                <li>Generate comprehensive patient discharge summaries.</li>
                <li>View and print discharge summaries for patient records.</li>
                <li>Maintain discharge documentation and treatment details.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/Discharge summary.png"
                alt="Discharge Summary Overview"
                loading="lazy">
        </div>
    </div>

    <!-- Footer -->
    <div style="text-align: center; font-size: 11px; color: var(--medium-text); margin-top: 40px; padding: 20px;">
        Copyright © 2021. All Rights Reserved by
        Manas Agro Industries and Infrastructure Limited
    </div>

</div>
<!-- END DISCHARGE MANAGEMENT PAGE -->



<!-- ACCOUNT DASHBOARD PAGE -->
<div class="page" style="display:none;" id="account">

    <!-- PAGE HEADER -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-calculator"></i>
            Account Management
        </h2>

        <p style="color: var(--medium-text); font-size: 16px; margin-top: 10px; line-height: 1.6;">
            Manage accounting operations, financial transactions,
            ledgers, vouchers and account reports through the
            integrated accounting module.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- 1. ACCOUNT DASHBOARD -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-chart-line"></i>
            Account Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>Manage day-to-day accounting activities.</li>
                <li>View financial transactions based on date.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/account ledger.png"
                 alt="Account Dashboard Overview" loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 2. PAYMENT VOUCHER -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-file-invoice-dollar"></i>
            Payment Voucher
        </h3>

        <div class="section-description">
            <ul>
                <li>Create and manage payment vouchers.</li>
                <li>Record payments received and maintain transaction details.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/Account payment voucher.png"
                 alt="Payment Voucher Overview" loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 3. LEDGER DASHBOARD -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-book-open"></i>
            Ledger Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View account-wise transaction details.</li>
                <li>Apply filters to search and track financial entries.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/Account ledger dashboard.png"
                 alt="Ledger Dashboard Overview" loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 4. CREATE NEW LEDGER -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-plus-circle"></i>
            Create New Ledger
        </h3>

        <div class="section-description">
            <ul>
                <li>Create new account ledgers.</li>
                <li>Update and maintain existing ledger details.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/Account payment voucher.png"
                 alt="Create New Ledger Overview" loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 5. CREATE NEW LEDGER HEAD -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-folder-plus"></i>
            Create New Ledger Head
        </h3>

        <div class="section-description">
            <ul>
                <li>Create and manage account groups.</li>
                <li>Edit existing ledger head information.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/account create ledger head.png"
                 alt="Create New Ledger Head Overview" loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- 6. TRIAL BALANCE -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-balance-scale"></i>
            Trial Balance
        </h3>

        <div class="section-description">
            <ul>
                <li>View the trial balance of all accounts.</li>
                <li>Review debit and credit balances for financial verification.</li>
            </ul>
        </div>

        <div class="image-container">
            <img src="${pageContext.request.contextPath}/views/images/Account Trial balance.png"
                 alt="Trial Balance Overview" loading="lazy">
        </div>
    </div>

    <!-- FOOTER -->
    <div style="text-align: center; font-size: 11px; color: var(--medium-text); margin-top: 30px; padding: 15px;">
        Copyright © 2021. All Rights Reserved by
        Manas Agro Industries and Infrastructure Limited
    </div>

</div>
<!-- END ACCOUNT DASHBOARD -->



<div class="page"  style="display:none;" id="refund_request">

    <!-- Refund Request Dashboard Header -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-undo"></i>
            Refund Request Dashboard
        </h2>

        <p class="section-description">
            View and manage customer refund requests efficiently.
            Authorized users can review, approve, or reject refund requests.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- Refund Dashboard -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-history"></i>
            Refund Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View all refund requests received from customers.</li>
                <li>Authorized users can review and approve or reject refund requests.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/Refund request dashboard.png"
                alt="Refund Request Dashboard Overview"
                loading="lazy"
            />
        </div>
    </div>

    <!-- Footer -->
    <div style="text-align: center; font-size: 11px; color: var(--medium-text); margin-top: 20px; padding: 10px;">
        Copyright © 2021. All Rights Reserved by Manas Agro Industries and Infrastructure Limited
    </div>

</div>


<!-- DISCOUNT REQUEST DASHBOARD -->
<div class="page"  style="display:none;" id="discount_request">

    <!-- PAGE HEADER -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-percent"></i>
            Discount Request Dashboard
        </h2>

        <p class="page-description">
            View and manage customer discount requests.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- DISCOUNT DASHBOARD -->
    <div class="section">

        <h3 class="section-subtitle">
            <i class="fas fa-tags"></i>
            Discount Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View all discount requests received.</li>
                <li>Authorized personnel can approve or reject discount requests.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/Account Discount dashboard.png"
                alt="Discount Request Dashboard Overview"
                loading="lazy">
        </div>

    </div>

    <!-- FOOTER -->
    <div class="page-footer">
        Copyright © 2021. All Rights Reserved by
        Manas Agro Industries and Infrastructure Limited
    </div>

</div>
<!-- END DISCOUNT REQUEST DASHBOARD -->




<!-- MAIN CONTENT -->
<div class="page"  style="display:none;" id="tpa">

    <!-- Title Section -->
    <div class="section">
        <h2 class="section-title">
            <i class="fas fa-hand-holding-usd"></i>
            TPA Dashboard
        </h2>
        <p class="page-description">
            Third Party Administration management.
        </p>
    </div>

    <div class="section-divider"></div>

    <!-- TPA Dashboard -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-tachometer-alt"></i>
            TPA Dashboard
        </h3>

        <div class="section-description">
            <ul>
                <li>View the list of all third party patients treated in the hospital.</li>
                <li>View the status of the reimbursement process.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/TPA dashboard.png"
                alt="TPA Dashboard Overview"
                loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- View Third Party Payer Organizations -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-building"></i>
            View Third Party Payer Organizations
        </h3>

        <div class="section-description">
            <ul>
                <li>View the list of third parties who have empaneled the hospital.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/TPA third party.png"
                alt="TPA Third Party Overview"
                loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- Add New Third Party Payer -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-plus-square"></i>
            Add New Third Party Payer
        </h3>

        <div class="section-description">
            <ul>
                <li>Add or maintain the details of a new third party payer.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/TPA add new third party.png"
                alt="Add New TPA Overview"
                loading="lazy">
        </div>
    </div>

    <div class="section-divider"></div>

    <!-- Schedule for TPP Charges -->
    <div class="section">
        <h3 class="section-subtitle">
            <i class="fas fa-calendar-alt"></i>
            Schedule for TPP Charges
        </h3>

        <div class="section-description">
            <ul>
                <li>Add or edit the third party charges schedule.</li>
            </ul>
        </div>

        <div class="image-container">
            <img
                src="${pageContext.request.contextPath}/views/images/TPA add TP charges.png"
                alt="TPP Charges Schedule Overview"
                loading="lazy">
        </div>
    </div>

    <!-- Footer -->
    <div class="page-footer">
        Copyright © 2021. All Rights Reserved by
        Manas Agro Industries and Infrastructure Limited
    </div>

</div>


</div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
					<div class="main-logo-text">
					<img src="views/images/Manas_Yuvicare_Teal_Logo.png" height="50"
						width="150" style="background-color: white;">
				</div>
					<p style="color: #bbb; margin-bottom: 20px; line-height: 1.7;">Complete
						Hospital Information Management System.</p>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-linkedin-in"></i></a> <a href="#"><i
							class="fab fa-youtube"></i></a> <a href="#"><i
							class="fab fa-instagram"></i></a>
					</div>
				</div>
                
              <div class="footer-col">
					<h3>Quick Links</h3>
					<ul class="footer-links">
						<li><a href="#home"><i class="fas fa-chevron-right"></i>
								Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus"><i class="fas fa-chevron-right"></i>
								About Us</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutproduct"><i class="fas fa-chevron-right"></i>
								About Product</a></li>
						<li><a href="${pageContext.request.contextPath}/contactus"><i class="fas fa-chevron-right"></i>
								Contact Us</a></li>
						<!-- <li><a href="#contact"><i class="fas fa-chevron-right"></i>
								Contact</a></li> -->
					</ul>
				</div>

				<div class="footer-col">
					<h3>Our Products</h3>
					<ul class="footer-links">
						<li><i class="fas fa-chevron-right"></i>
								YUVICARE HIMS Pro</li>
						<li><i class="fas fa-chevron-right"></i>
								YUVICARE Clinic</li>
						<li><i class="fas fa-chevron-right"></i>
								YUVICARE Diagnostics</li>
						<li><i class="fas fa-chevron-right"></i>
								YUVICARE Pharmacy</li>
						<li><i class="fas fa-chevron-right"></i>
								YUVICARE Telemedicine</li>
					</ul>
				</div>

                
                <div class="footer-col">
                    <h3>Contact Us</h3>
                    <ul class="contact-info">
                        <li>
                            <i class="fas fa-map-marker-alt"></i>
                            <div>
                                <strong>Head Office</strong>
								<p>4th Floor, Gupta Tower, Science college Road, Civil
									Lines, Nagpur – 440001 (MS) INDIA</p>
							</div>
                        </li>
                        <li>
                            <i class="fas fa-phone"></i>
                            <div>
                                <strong>Mobile</strong>
                                <p>9156248809, 9699836133</p>
                            </div>
                        </li>
                        <li>
                           <i class="fa-solid fa-tty"></i></i>
                            <div>
                                <strong>Phone</strong>
                                <p>0712 2557474, 0712 2557575</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <div>
                                <strong>Email</strong>
                                <p>yuvicare.hims@manasindustry.com</p>
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
                <p>© 2020 YUVICARE Hospital Information Management System. All rights reserved.</p>
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
        
        
        function toggleSubmenu(event, element) {
            event.preventDefault();
            event.stopPropagation();

            var parentLi = element.closest("li.has-submenu");

            // Close other open sibling dropdowns
            var siblings = parentLi.parentElement.children;

            Array.from(siblings).forEach(function(sibling) {
                if (sibling !== parentLi) {
                    sibling.classList.remove("active");

                    sibling.querySelectorAll("li.has-submenu").forEach(function(child) {
                        child.classList.remove("active");
                    });
                }
            });

            // Toggle current dropdown
            parentLi.classList.toggle("active");
        }


        // Close dropdown when clicking anywhere outside it
        document.addEventListener("click", function(event) {

            var productMenu = document.querySelector(".main-nav li.has-submenu");

            if (productMenu && !productMenu.contains(event.target)) {
                productMenu.classList.remove("active");

                productMenu.querySelectorAll("li.has-submenu").forEach(function(child) {
                    child.classList.remove("active");
                });
            }
        });
        


        function showPage(pageId) {

            // 1. Hide all module pages
            document.querySelectorAll(".main .page").forEach(function(page) {
                page.style.display = "none";
            });

            // 2. Remove previous active menu highlighting
            document.querySelectorAll(".submenu a").forEach(function(link) {
                link.classList.remove("selected-menu");
            });

            // 3. Display selected page
            var selectedPage = document.getElementById(pageId);

            if (selectedPage) {

                selectedPage.style.display = "block";

                // 4. Highlight clicked menu item
                var clickedLink = document.querySelector(
                    '.submenu a[onclick*="' + pageId + '"]'
                );

                if (clickedLink) {
                    clickedLink.classList.add("selected-menu");
                }

                // 5. Close all open dropdown menus
                document.querySelectorAll(".has-submenu").forEach(function(menu) {
                    menu.classList.remove("active");
                });

                // 6. Scroll to selected page
                window.scrollTo({
                    top: selectedPage.getBoundingClientRect().top +
                         window.pageYOffset - 100,
                    behavior: "smooth"
                });
            }
        }

    </script>
</body>
</html>
