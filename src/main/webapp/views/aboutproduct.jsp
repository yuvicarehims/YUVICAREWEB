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
                --sea-turquoise: #40E0D0;
                --sea-caribbean: #00CED1;
                --sea-teal: #008B8B;
                --sea-deep: #003333;
                --sea-light: #AFEEEE;
                --sea-foam: #E0FFFF;
                --sea-sunlight: #FFD700;
                --white: #ffffff;
                --text: #1f2937;
                --muted: #6b7280;
                --border: #e5e7eb;
            }

            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(rgba(224, 255, 255, 0.9), rgba(224, 255, 255, 0.9)),
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
                background: #26D0CE;
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
	min-height: 100vh;
	padding: 30px 35px;
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
					<li><a href="${pageContext.request.contextPath}/home"
						class="active"> <i class="fas fa-home"></i> Home
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus">
							<i class="fas fa-cogs"></i> About Us
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutproduct">
							<i class="fas fa-th-large"></i> About Product
					</a></li>


					<!-- Product Overview -->
					<li class="has-submenu"><a href="#"
						onclick="toggleSubmenu(event, this)"> <i
							class="fas fa-th-large"></i> Product Overview <i
							class="fa fa-chevron-down"></i>
					</a>

						<ul class="submenu">
							<li class="has-submenu"><a href="#"
								onclick="toggleSubmenu(event, this)"> OPD (Out-Patient
									Department) <i class="fa fa-chevron-down"></i>
							</a>

								<ul class="submenu">
									<li><a href="#"
										onclick="showPage('opd-dashboard'); return false;">OPD</a></li>
									<li><a href="#"
										onclick="showPage('appointment'); return false;">Appointment
											Finder</a></li>
									<li><a href="#"
										onclick="showPage('vaccination'); return false;">Vaccination</a></li>
									<li><a href="#"
										onclick="showPage('prescription'); return false;">Prescription</a></li>
									<li><a href="#" onclick="showPage('emr'); return false;">EMR</a></li>
									<li><a href="#"
										onclick="showPage('tele-medicine'); return false;">Tele-Medicine</a></li>
								</ul></li>
						</ul></li>


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

        <!-- Refined Light Footer -->
        <footer class="modern-footer">
            <div class="footer-grid">
                <div class="footer-col">
                    <a href="/home" class="footer-logo">
                        <i class="fas fa-hospital-alt"></i>
                        <span>Manas Yuvicare</span>
                    </a>
                    <p class="small">Integrated healthcare management solutions provider offering enterprise-grade
                        Hospital Information Management Systems for clinicians and hospitals.</p>
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
                        <li><a href="/product_details">product_details</a></li>
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
                        <li><a href="tel:+919156248809"><i class="fas fa-phone text-primary"></i> +91 9156248809</a>
                        </li>
                        <li><span class="small d-block mt-1 text-muted"><i class="fas fa-map-marker-alt me-2"></i>
                                Nagpur, MH, India</span></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p class="mb-0">Copyright © 2021 - 2025 Manas Yuvicare Healthcare Systems. All Rights Reserved.</p>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

    </html>