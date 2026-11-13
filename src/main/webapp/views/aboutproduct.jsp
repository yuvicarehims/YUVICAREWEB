<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Product - Manas Yuvicare | Hospital Information Management System</title>
        <!-- Bootstrap CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
        <!-- Chart.js -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <style>
          :root {
	--primary: #41bfc1;
	--primary-dark: #38a8aa;
	--secondary: #ffd700;
	--accent: #2a8c8e;
	--gradient-primary: linear-gradient(135deg, var(--primary),
		var(--accent));
	--gradient-dark: linear-gradient(135deg, var(--accent), #1a6d6f);
	--light-bg: #f8fcfc;
	--section-bg: #ffffff;
	--card-bg: #ffffff;
	--dark-text: #2c3e50;
	--medium-text: #555555;
	--light-text: #777777;
	--white: #ffffff;
	--shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
	--shadow-heavy: 0 15px 40px rgba(0, 0, 0, 0.12);
	--shadow-light: 0 5px 15px rgba(0, 0, 0, 0.05);
	--transition: all 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
	--border-radius: 12px;
	--border-radius-lg: 20px;
}* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(white, rgba(224, 255, 255, 0.9)),
                    url('https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: var(--text);
                margin: 0;
                padding: 0;
                line-height: 1.6;
                overflow-x: hidden;
            }

            /* ===== NAVBAR ===== */
            .modern-header {
                background: linear-gradient(135deg, var(--sea-turquoise) 0%, var(--sea-caribbean) 100%);
                height: 80px;
             
               
               
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                
                	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	background: rgba(255, 255, 255, 0.95);
	backdrop-filter: blur(15px);
	-webkit-backdrop-filter: blur(15px);
	border-bottom: 1px solid rgba(65, 191, 193, 0.1);
	transition: all 0.4s ease;

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
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
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

            /* .nav-link-custom {
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
                transform: translateY(-2px);
            }
 */
/* Keep all main navigation items visible */
.nav-menu > li {
    display: inline-block;
}

/* Style all main navigation links */
.nav-menu > li > a {
    color: #003B5C;
    text-decoration: none;
    font-weight: 600;
    font-size: 14px;
    padding: 10px 18px;
    border-radius: 20px;
    transition: all 0.3s ease;
    display: flex;
    align-items: center;
    gap: 6px;
}

/* Hover effect */
.nav-menu > li > a:hover {
    background: #40E0D0;
    color: #003B5C;
}

/* Hide only nested dropdowns initially */
.nav-menu li.has-submenu > .submenu {
    display: none;
}

/* Show dropdown when clicked */
.nav-menu li.has-submenu.active > .submenu {
    display: block;
}
 
            /* ===== CAROUSEL WITH CENTERED TEXT ===== */
            .carousel-section {
                width: 100%;
                overflow: hidden;
                position: relative;
            }

            .carousel-item {
                height: 600px;
                position: relative;
            }

            .carousel-item img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .carousel-overlay {
                position: absolute;
                inset: 0;
                background: rgba(0, 0, 0, 0.4);
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                color: white;
                padding: 20px;
            }

            .carousel-overlay h1 {
                font-size: 48px;
                font-weight: 700;
                margin-bottom: 20px;
                max-width: 900px;
                text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            }

            .carousel-overlay p {
                font-size: 20px;
                max-width: 800px;
                opacity: 0.95;
                line-height: 1.5;
                text-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            }

            .carousel-indicators [data-bs-target] {
                width: 14px;
                height: 14px;
                border-radius: 50%;
                background-color: white;
                border: 2px solid #ccc;
                opacity: 1;
                margin: 0 8px;
            }

            .carousel-indicators .active {
                background-color: var(--sea-sunlight);
                border-color: var(--sea-sunlight);
            }

            /* ===== PAGE CONTENT ===== */
            .page-wrapper {
                max-width: 1300px;
                margin: 0 auto;
                padding: 60px 20px 0;
                /* Removed bottom padding */
            }

            .breadcrumb {
                margin-bottom: 30px;
            }

            .breadcrumb-item a {
                color: var(--sea-teal);
                text-decoration: none;
                font-weight: 600;
            }

            .card-custom {
                background: white;
                border-radius: 12px;
                padding: 40px;
                margin-bottom: 30px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
                border: 1px solid #eee;
                transition: 0.3s;
            }

            .card-custom h2,
            .card-custom h3 {
                color: #2C525D;
                margin-bottom: 25px;
                display: flex;
                align-items: center;
                gap: 15px;
                font-weight: 700;
            }

            .btn-medical {
                background: #2C525D;
                color: white;
                padding: 12px 30px;
                border-radius: 6px;
                font-weight: 600;
                text-decoration: none;
                margin-right: 15px;
                display: inline-block;
                transition: 0.3s;
            }

            .btn-medical:hover {
                background: #1a353c;
                transform: translateY(-2px);
            }

            /* ===== MODULES ===== */
            .modules-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
                gap: 20px;
            }

            .module-card {
                background: #f9fafb;
                padding: 25px;
                border-radius: 12px;
                border: 1px solid #eee;
                transition: 0.3s;
                text-align: center;
            }

            .module-card:hover {
                transform: translateY(-5px);
                border-color: var(--sea-teal);
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                background: white;
            }

            .module-icon {
                width: 55px;
                height: 55px;
                background: #e0f2f1;
                border-radius: 12px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--sea-teal);
                font-size: 22px;
                margin: 0 auto 15px;
                transition: 0.3s;
            }

            .module-card:hover .module-icon {
                background: var(--sea-teal);
                color: white;
            }

            .module-card h6 {
                font-weight: 700;
                color: #334155;
                margin-bottom: 8px;
            }

            /* ===== DASHBOARD ===== */
            .metric-card {
                background: white;
                padding: 20px;
                border-radius: 12px;
                border: 1px solid #eee;
                text-align: center;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.03);
            }

            .metric-value {
                font-size: 28px;
                font-weight: 700;
                color: #334155;
                margin-bottom: 5px;
            }

            .metric-label {
                font-size: 13px;
                color: #64748b;
                font-weight: 600;
                text-transform: uppercase;
            }

            .trend-up {
                color: #10b981;
                font-size: 12px;
            }

            .trend-down {
                color: #ef4444;
                font-size: 12px;
            }

            /* ===== WHY CHOOSE US ===== */
            .why-choose-card {
                border-left: 5px solid var(--sea-caribbean);
                padding: 25px;
                background: #f8fafc;
                border-radius: 0 12px 12px 0;
                height: 100%;
                transition: 0.3s;
            }

            .why-choose-card:hover {
                background: white;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                transform: translateX(5px);
            }

            .why-choose-card i {
                font-size: 28px;
                color: var(--sea-teal);
                margin-bottom: 15px;
                display: block;
            }

            .why-choose-card h5 {
                font-weight: 700;
                color: #1e293b;
                margin-bottom: 15px;
            }

            .why-choose-card p {
                font-size: 14px;
                color: #475569;
                margin-bottom: 0;
            }

            /* ===== VIBRANT TEAL FOOTER ===== */
            .modern-footer {
                background:#1a1a1a;
                /* Vibrant teal from screenshot */
                color: white;
                padding: 60px 0 0;
                position: relative;
                margin-top: 0;
                /* Remove gap */
            }

            .footer-grid {
                display: grid;
                grid-template-columns: 1.5fr repeat(3, 1fr);
                gap: 40px;
                max-width: 1400px;
                margin: 0 auto;
                padding: 0 30px;
            }

            .footer-col h5 {
                color: white;
                font-size: 15px;
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
                .carousel-overlay h1 {
                    font-size: 32px;
                }

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

            /* ===== ABOUT PRODUCT PAGE ===== */
            .about-hero {
                background: linear-gradient(135deg, #e0ffff 0%, #ffffff 100%);
                border-left: 6px solid var(--sea-teal);
            }
            .about-hero h2 { display: block; margin-bottom: 12px; }
            .section-heading {
                color: #2C525D;
                font-weight: 700;
                margin-bottom: 24px;
            }
            .about-section-card {
                background: #fff;
                border: 1px solid #e8eeee;
                border-radius: 14px;
                padding: 28px;
                height: 100%;
                box-shadow: 0 8px 24px rgba(0,0,0,.04);
                transition: .25s ease;
            }
            .about-section-card:hover {
                transform: translateY(-4px);
                box-shadow: 0 12px 28px rgba(0,0,0,.08);
                border-color: var(--sea-caribbean);
            }
            .about-section-card h4 {
                color: #2C525D;
                font-weight: 700;
                font-size: 18px;
                margin: 12px 0;
            }
            .about-icon {
                width: 54px; height: 54px; border-radius: 13px;
                display: flex; align-items: center; justify-content: center;
                background: #e0f2f1; color: var(--sea-teal); font-size: 23px;
            }
            .feature-list { list-style: none; padding: 0; margin: 18px 0 0; }
            .feature-list li {
                display: flex; gap: 10px; align-items: flex-start;
                margin-bottom: 13px; color: #475569; font-size: 14px;
            }
            .feature-list i { color: var(--sea-teal); margin-top: 4px; }
            .sector-card { border-top: 4px solid var(--sea-caribbean); }
            .why-banner {
                background: linear-gradient(135deg, #2C525D, #008B8B);
                color: #fff; border-radius: 14px; padding: 34px;
            }
            .why-banner h3 { color: #fff; }
            .why-banner p { color: rgba(255,255,255,.88); margin-bottom: 0; }
            @media (max-width: 767px) {
                .about-section-card { padding: 22px; }
                .why-banner { padding: 25px; }
            }
            
            
            * ===== Header ===== */
.main-header {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	background: rgba(255, 255, 255, 0.95);
	backdrop-filter: blur(15px);
	-webkit-backdrop-filter: blur(15px);
	border-bottom: 1px solid rgba(65, 191, 193, 0.1);
	transition: all 0.4s ease;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
}

.main-header.scrolled {
	background: rgba(255, 255, 255, 0.98);
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
}

.header-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 0;
}

.main-logo {
	display: flex;
	align-items: center;
	text-decoration: none;
	gap: 15px;
}

.main-logo-img {
	width: 50px;
	height: 50px;
	border-radius: 12px;
	background: var(--gradient-primary);
	display: flex;
	align-items: center;
	justify-content: center;
	color: var(--white);
	font-size: 24px;
	box-shadow: 0 4px 15px rgba(65, 191, 193, 0.3);
}

.main-logo-text h3 {
	font-size: 1.5rem;
	font-weight: 800;
	color: var(--dark-text);
	letter-spacing: 1px;
}

.main-logo-text p {
	font-size: 0.75rem;
	color: var(--medium-text);
	letter-spacing: 0.5px;
}

.main-nav ul {
	display: flex;
	gap: 30px;
	list-style: none;
}

.main-nav ul li a {
	color: var(--dark-text);
	text-decoration: none;
	font-weight: 600;
	font-size: 0.95rem;
	padding: 10px 0;
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
	height: 2px;
	background: var(--gradient-primary);
	transition: var(--transition);
}

.main-nav ul li a:hover::after, .main-nav ul li a.active::after {
	width: 100%;
}

.main-nav ul li a:hover, .main-nav ul li a.active {
	color: var(--primary);
}

.mobile-menu-btn {
	display: none;
	background: none;
	border: none;
	color: var(--dark-text);
	font-size: 24px;
	cursor: pointer;
	padding: 8px;
	border-radius: 8px;
	transition: var(--transition);
}

.mobile-menu-btn:hover {
	background: rgba(65, 191, 193, 0.1);
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
	background: white;
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



/* ===== Footer ===== */
footer {
	background: #1a1a1a;
	color: var(--white);
	padding: 80px 0 30px;
	position: relative;
}

footer::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 4px;
	background: var(--gradient-primary);
}

.footer-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 40px;
	margin-bottom: 50px;
}

.footer-col h3 {
	font-size: 1.25rem;
	margin-bottom: 25px;
	color: var(--white);
	position: relative;
	padding-bottom: 15px;
}

.footer-col h3::after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 0;
	width: 40px;
	height: 3px;
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

.contact-info {
	list-style: none;
}

.contact-info li {
	display: flex;
	align-items: flex-start;
	gap: 15px;
	margin-bottom: 20px;
	color: #bbb;
}

.contact-info i {
	color: var(--primary);
	margin-top: 5px;
	font-size: 18px;
}

.copyright {
	text-align: center;
	padding-top: 30px;
	border-top: 1px solid #333;
	color: #888;
	font-size: 0.875rem;
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
					<li><a href="${pageContext.request.contextPath}/aboutus">
							<i class="fas fa-cogs"></i> About Us
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutproduct" class="active">
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

        <!-- Refined Carousel -->
        <div class="carousel-section">
            <div id="mainCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1551076805-e1869033e561?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"
                            alt="Hospital Room">
                        <div class="carousel-overlay">
                            <h1>Healthcare Management System</h1>
                            <p>Transform your healthcare institution with our integrated platform designed for clinical
                                excellence and operational efficiency.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"
                            alt="Medical Lab">
                        <div class="carousel-overlay">
                            <h1>Advanced Clinical Excellence</h1>
                            <p>Providing cutting-edge solutions for modern healthcare providers with a focus on patient
                                safety and data security.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1581056771107-24ca5f033842?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"
                            alt="Hospital Monitoring">
                        <div class="carousel-overlay">
                            <h1>Real-Time Operational Insights</h1>
                            <p>Leverage our integrated dashboard to monitor hospital operations and patient statistics
                                in real-time.</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel"
                    data-bs-slide="prev"><span class="carousel-control-prev-icon"></span></button>
                <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel"
                    data-bs-slide="next"><span class="carousel-control-next-icon"></span></button>
            </div>
        </div>

        <div class="page-wrapper">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About Product</li>
                </ol>
            </nav>

            <!-- Product introduction -->
            <section class="card-custom about-hero">
                <h2><i class="fas fa-hospital-symbol"></i> ABOUT PRODUCT</h2>
                <h3 class="mb-3">MANAS-YUVICARE HIMS: Complete Hospital Information Management System</h3>
                <p class="mb-0">
                    <strong>YUVICARE</strong> is a complete, modular Hospital Information Management System (HIMS)
                    designed with seamlessly integrated components. You have the flexibility to subscribe to and
                    deploy specific modules according to your precise operational relevance.
                </p>
                <p class="mt-3 mb-0">
                    Serving as a single unified digital ecosystem, the platform streamlines clinical operations,
                    diagnostic workflows, and institutional administration under one robust framework.
                </p>
            </section>

            <!-- 1. Departmental coverage -->
            <section class="card-custom">
                <h3 class="section-heading"><i class="fas fa-sitemap me-2"></i>1. Comprehensive Departmental Coverage</h3>
                <p class="text-muted mb-4">Our system integrates all core departments and functionalities of modern healthcare facilities:</p>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-user-md"></i></div>
                            <h4>Clinical Care</h4>
                            <ul class="feature-list">
                                <li><i class="fas fa-check-circle"></i><span>Out-Patient Department (OPD)</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Tele-Consultation</span></li>
                                <li><i class="fas fa-check-circle"></i><span>In-Patient Department (IPD)</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Operations Theatre (OT)</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Electronic Medical Records (EMR)</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Nursing</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-microscope"></i></div>
                            <h4>Diagnostics &amp; Supplies</h4>
                            <ul class="feature-list">
                                <li><i class="fas fa-check-circle"></i><span>Investigations</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Pathology</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Radiology</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Pharmacy</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Stores</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-building"></i></div>
                            <h4>Administration &amp; Compliance</h4>
                            <ul class="feature-list">
                                <li><i class="fas fa-check-circle"></i><span>Human Resource Management (HR)</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Accounts</span></li>
                                <li><i class="fas fa-check-circle"></i><span>Accreditation (NABH)</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 2. Product highlights -->
            <section class="card-custom">
                <h3 class="section-heading"><i class="fas fa-star me-2"></i>2. Advanced Product Highlights &amp; Features</h3>
                <div class="row g-4">
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-microphone-alt"></i></div>
                            <h4>Speech-to-Text</h4>
                            <p class="text-muted mb-0">Advanced voice dictation for fast and accurate clinical documentation.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-stethoscope"></i></div>
                            <h4>Automated Equipment Integration</h4>
                            <p class="text-muted mb-0">Direct interface with diagnostic machinery and medical hardware for automatic data capture, eliminating manual data entry errors.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-brain"></i></div>
                            <h4>AI Creation &amp; Automation</h4>
                            <p class="text-muted mb-0">Intelligent, self-learning models tailored to your institution’s workflows—from automated clinical documentation and predictive patient triage to smart digital assistants.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-leaf"></i></div>
                            <h4>Allopathic &amp; Ayurvedic Support</h4>
                            <p class="text-muted mb-0">Purpose-built clinical workflows tailored to diverse medical practices.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-id-card"></i></div>
                            <h4>Single-ID Unified Access</h4>
                            <p class="text-muted mb-0">Connect OPD, inpatient, diagnostic, and academic operations under one seamless login.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-section-card">
                            <div class="about-icon"><i class="fas fa-cloud"></i></div>
                            <h4>Anywhere, Anytime Connectivity</h4>
                            <p class="text-muted mb-0">Reliable cloud-based browser access paired with dedicated mobile applications for staff, students, and patients.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 3. Sector solutions -->
            <section class="card-custom">
                <h3 class="section-heading"><i class="fas fa-hospital-user me-2"></i>3. Tailored Solutions by Sector</h3>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card sector-card">
                            <div class="about-icon"><i class="fas fa-hospital"></i></div>
                            <h4>Clinics &amp; Hospitals</h4>
                            <p class="text-muted mb-0">Deliver faster, smarter patient care—from digital OPDs and Health ATM kiosks to inpatient management and automated pharmacy systems.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card sector-card">
                            <div class="about-icon"><i class="fas fa-user-graduate"></i></div>
                            <h4>Medical Colleges</h4>
                            <p class="text-muted mb-0">Digitize your entire campus with unified modules for student administration, fee management, libraries, and hostels.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="about-section-card sector-card">
                            <div class="about-icon"><i class="fas fa-vial"></i></div>
                            <h4>Path Labs &amp; Diagnostics</h4>
                            <p class="text-muted mb-0">Completely eliminate manual entry with direct, automated data integration straight from diagnostic machinery into your software.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Why choose -->
            <section class="why-banner mb-5">
                <h3 class="mb-4"><i class="fas fa-award me-2"></i>Why Choose Our Platform?</h3>
                <div class="row g-4">
                    <div class="col-md-6">
                        <h5 class="fw-bold"><i class="fas fa-sliders-h me-2"></i>Built to Fit Your Workflow</h5>
                        <p>Flexible, bespoke customization designed around your institution's exact operational processes.</p>
                    </div>
                    <div class="col-md-6">
                        <h5 class="fw-bold"><i class="fas fa-expand-arrows-alt me-2"></i>Seamless Scalability</h5>
                        <p>Expand your system with additional modules as your healthcare organization grows.</p>
                    </div>
                </div>
            </section>
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
						<li><i class="fas fa-map-marker-alt"></i>
							<div>
								<strong>Head Office</strong>
								<p>4th Floor, Gupta Tower, Science college Road, Civil
									Lines, Nagpur – 440001 (MS) INDIA</p>
							</div></li>
						<li><i class="fas fa-phone"></i>
							<div>
								<strong>Mobile</strong>
								<p>9156248809, 9699836133</p>
							</div></li>
							
							 <li>
                           <i class="fa-solid fa-tty"></i></i>
                            <div>
                                <strong>Phone</strong>
                                <p>0712 2557474, 0712 2557575</p>
                            </div>
                        </li>
						<li><i class="fas fa-envelope"></i>
							<div>
								<strong>Email</strong>
								<p>yuvicare.hims@manasindustry.com</p>
							</div></li>
						<li><i class="fas fa-clock"></i>
							<div>
								<strong>Support Hours</strong>
								<p>24/7 Support Available</p>
							</div></li>
					</ul>
				</div>
			</div>

			<div class="copyright">
				<p>
					© 2020 YUVICARE Hospital Information Management System. All rights
					reserved.
				</p>
			</div>
		</div>
	</footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        
        
        <script type="text/javascript">
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