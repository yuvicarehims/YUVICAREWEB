
<%@ page contentType="text/html;charset=UTF-8" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Contact Us | HealthCare Medical</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Contact HealthCare Medical for appointments, consultations, and healthcare services. 24/7 support with expert medical professionals.">

<!-- Icons & Fonts -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">

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
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, sans-serif;
	line-height: 1.6;
	color: var(--dark-text);
	background-color: var(--light-bg);
	overflow-x: hidden;
	scroll-behavior: smooth;
}
/* BACKGROUND IMAGE */
body::before{
    content:"";
    position:fixed;
    inset:0;
    background:url('bd.png') top/cover no-repeat;
    z-index:-1;
    opacity:0.03;
}

.container {
	width: 100%;
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 20px;
}

/* HEADER */
header{
    background:rgba(255,255,255,.98);
    position:sticky;
    top:0;
    z-index:1000;
    box-shadow:0 4px 12px rgba(0,0,0,.08);
    backdrop-filter:blur(10px);
}
.header-container{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:16px 0;
}
.logo{
    display:flex;
    gap:12px;
    align-items:center;
    font-family:'Poppins',sans-serif;
    text-decoration:none;
    color:var(--neutral-dark);
}
.logo i{font-size:2rem;color:var(--primary);}
.logo-text{
    display:flex;
    flex-direction:column;
}
.logo-subtitle{
    font-size:12px;
    color:var(--neutral-gray);
    letter-spacing:1px;
    text-transform:uppercase;
}

/* NAVIGATION */
nav {
    display: flex;
    align-items: center;
    justify-content: center; /* center nav items horizontally */
    flex: 1; /* take remaining space */
}
nav ul {
    list-style: none;
    display: flex;
    gap: 30px; /* space between nav items */
    margin: 0;
    padding: 0;
}
nav li {
    display: inline-block;
}
nav a{
    text-decoration:none;
    color:#333;
    font-weight:500;
    padding:8px 0;
    position:relative;
    display:flex;
    gap:6px;
}

/* underline base */
nav a::after{
    content:'';
    position:absolute;
    bottom:0;
    left:0;
    width:0;
    height:3px;
    background:#41bfc1;
    border-radius:3px;
    transition:width .3s ease;
}

/* hover + active color */
nav a:hover,
nav a.active{
    color:#41bfc1;
}

/* hover + active underline */
nav a:hover::after,
nav a.active::after{
    width:100%;
}
.emergency-btn{
    background-color:var(--accent-red);
    color:white;
    border:none;
    padding:10px 20px;
    border-radius:50px;
    font-weight:600;
    font-size:14px;
    display:flex;
    align-items:center;
    gap:8px;
    cursor:pointer;
    transition:all 0.3s ease;
    text-decoration:none;
}
.emergency-btn:hover{
    background-color:#d32f2f;
    transform:translateY(-2px);
    box-shadow:0 8px 20px rgba(230,57,70,0.3);
}

/* HERO SECTION */
.hero{
    min-height:460px;
    display:flex;
    align-items:center;
    padding: 40px;
    color:#fff;
    background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
    position:relative;
    justify-content: space-around;
}

.hero-content{
    background:rgba(255,255,255,0.1);
    padding:40px;
    border-radius:12px;
    max-width:550px;
    backdrop-filter:blur(5px);
    border:1px solid rgba(255,255,255,0.2);
    position:relative;
    z-index:2;
}
.hero h1{
    font-family:'Poppins',sans-serif;
    font-size:3.2rem;
    margin-bottom:15px;
    text-shadow:0 2px 4px rgba(0,0,0,0.3);
}
.hero p{
    font-size:1.25rem;
    opacity:0.9;
    text-shadow:0 1px 2px rgba(0,0,0,0.2);
}

/* HERO IMAGE */
.hero-image img {
    max-width: 100%;
    height: auto;
    max-height: 350px;
    border-radius: 28px;
    background: none; 
    padding: 0;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
    filter: none;
    position: relative;
    z-index: 5;
}

/* ABOUT SECTION */
.info-section{
    background:#fff;
    padding:1px 0;
    box-shadow:var(--shadow);
    position:relative;
}
.info-section h2{
    font-family:'Poppins',sans-serif;
    font-size:2.8rem;
    font-weight:700;
    color:var(--primary-dark);
    margin-bottom:25px;
}
.info-section p{
    font-size:1.25rem;
    line-height:1.8;
    color:#555;
    max-width:900px;
}

/* CARDS */
.info-cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
    gap:35px;
    margin-top:60px;
}
.card{
    background:#f8fafc;
    padding:40px 25px;
    border-radius:18px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,.12);
    transition:.35s ease;
    border:1px solid transparent;
    position:relative;
    overflow:hidden;
}
.card::before{
    content:'';
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:4px;
    background:linear-gradient(90deg, var(--primary), var(--primary-dark));
}
.card:hover{
    transform:translateY(-10px);
    box-shadow:0 25px 60px rgba(65, 191, 193, 0.35);
    border-color:var(--primary);
}
.card i{
    font-size:3.2rem;
    color:var(--primary);
    margin-bottom:18px;
}
.card h3{
    font-family:'Poppins',sans-serif;
    font-size:1.5rem;
    margin-bottom:10px;
}
.card p{
    color:var(--neutral-gray);
    font-size:1rem;
    line-height:1.6;
}

/* SERVICES SECTION */
.section-services {
    padding: 12px 0;
    background: var(--light-bg);
}

.section-title {
    text-align: center;
    margin-bottom: 20px;
}

.section-title h2 {
    font-family: 'Poppins', sans-serif;
    font-size: 2.8rem;
    color: var(--primary-dark);
}

.services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
}

.service-card {
    background: var(--white);
    border-radius: 18px;
    padding: 40px 30px;
    text-align: center;
    box-shadow: 0 15px 35px rgba(0,0,0,.12);
    transition: all 0.35s ease;
    border: 1px solid transparent;
    position: relative;
    overflow: hidden;
}
.service-card::before{
    content:'';
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:4px;
    background:linear-gradient(90deg, var(--primary), var(--primary-dark));
}

.service-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 25px 60px rgba(65, 191, 193, 0.35);
    border-color: var(--primary);
}

.service-icon {
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

.service-card h3 {
    color: var(--primary-dark);
    margin-bottom: 15px;
}

.service-card p {
    color: var(--neutral-gray);
    line-height: 1.6;
}

/* CONTACT SECTION */
.contact-section{
    padding:10px 0;
    background:var(--white);
    position:relative;
}
.contact-container{
    display:flex;
    justify-content:center;
    gap:50px;
    margin-top:12px;
    flex-wrap:wrap;
}

.contact-form{
    background:rgba(255,255,255,.95);
    backdrop-filter:blur(14px);
    max-width:800px;
    width:100%;
    padding:20px 40px;
    border-radius:26px;
    box-shadow:0 30px 80px rgba(0,0,0,.35);
    flex: 1;
    min-width: 500px;
    position:relative;
}

.form-title {
    color: var(--primary-dark);
    font-size: 2rem;
    margin-bottom: 10px;
}

.form-subtitle {
    color: var(--neutral-gray);
    margin-bottom: 30px;
}

.form-row{
    display:flex;
    gap:24px;
    margin-bottom:22px;
}
.form-group{flex:1;}

label{
    font-weight:600;
    color:var(--primary-dark);
    margin-bottom:8px;
    display:block;
}

input,textarea,select{
    width:100%;
    padding:16px;
    border-radius:12px;
    border:1.8px solid var(--border);
    font-size:1rem;
    transition: all 0.3s ease;
}

input:focus, textarea:focus, select:focus {
    outline: none;
    border-color: var(--primary);
    box-shadow: 0 0 0 3px rgba(65, 191, 193, 0.1);
}

.submit-btn{
    background:linear-gradient(135deg, var(--primary), var(--primary-dark));
    border:none;
    color:#fff;
    padding:18px 60px;
    border-radius:30px;
    font-weight:600;
    cursor:pointer;
    transition:.3s ease;
    display: inline-flex;
    align-items: center;
    gap: 10px;
}

.submit-btn:hover{
    background:linear-gradient(135deg, var(--primary-dark), #38a8aa);
    transform:translateY(-3px);
    box-shadow:0 18px 45px rgba(65, 191, 193, 0.45);
}

.radio-group {
    display: flex;
    gap: 20px;
    margin-top: 10px;
}

.radio-option {
    display: flex;
    align-items: center;
    gap: 8px;
    cursor: pointer;
}

.form-note {
    margin-top: 20px;
    color: var(--neutral-gray);
    font-size: 0.9rem;
    text-align: center;
}

.form-note a {
    color: var(--primary);
    text-decoration: none;
}

.form-note a:hover {
    text-decoration: underline;
}

/* HERO RIGHT COLUMN */
.hero-right{
    background:rgba(65, 191, 193, 0.85);
    padding:40px 30px;
    border-radius:12px;
    color:#fff;
    max-width:500px;
    width:100%;
    display:flex;
    flex-direction:column;
    justify-content:center;
}
.hero-right h1{
    font-size:2rem;
    margin-bottom:20px;
    color: #fff;
}
.hero-right p{
    font-size:1.15rem;
    line-height:1.7;
    margin-bottom: 15px;
}
.hero-right p i {
    margin-right: 10px;
    width: 20px;
    text-align: center;
}

/* BOTTOM CONTENT */
.bottom-content{
    background:#fff;
    padding:0px 20px;
    margin-top:10px;
    box-shadow:var(--shadow);
}
.bottom-content h2{
    font-family:'Poppins',sans-serif;
    color:var(--primary-dark);
    font-size:2.5rem;
    margin-bottom:25px;
}
.bottom-content p{
    font-size:1.1rem;
    line-height:1.7;
    color:#555;
    margin-bottom:20px;
}

/* FOOTER */
footer{
    background:#1a1a1a;
    color:#fff;
    padding:60px 0 20px;
    margin-top:80px;
}

.footer-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 40px;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-column h3 {
    font-size: 1.2rem;
    margin-bottom: 25px;
    color: var(--white);
    position: relative;
    padding-bottom: 10px;
}

.footer-column h3::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 40px;
    height: 2px;
    background: var(--primary);
}

.footer-about p {
    color: #aaa;
    line-height: 1.6;
    margin-bottom: 20px;
}

.social-links {
    display: flex;
    gap: 12px;
    margin-top: 20px;
}

.social-link {
    width: 36px;
    height: 36px;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    text-decoration: none;
    transition: all 0.3s ease;
}

.social-link:hover {
    background: var(--primary);
    transform: translateY(-3px);
}

.footer-links {
    list-style: none;
}

.footer-links li {
    margin-bottom: 12px;
}

.footer-links a {
    color: #aaa;
    text-decoration: none;
    transition: all 0.3s ease;
    font-size: 14px;
}

.footer-links a:hover {
    color: var(--secondary);
    padding-left: 5px;
}

.footer-links i {
    color: var(--primary);
    margin-right: 10px;
    width: 20px;
}

.bottom {
    text-align: center;
    border-top: 1px solid #333;
}

.bottom p {
    color: #888;
    margin-bottom: 10px;
    font-size: 14px;
}

.bottom a {
    color: #aaa;
    text-decoration: none;
    transition: all 0.3s ease;
}

.bottom a:hover {
    color: var(--secondary);
}

/* FORM SUCCESS MESSAGE */
.form-success {
    background: #d4edda;
    color: #155724;
    padding: 15px 20px;
    border-radius: 8px;
    margin-bottom: 25px;
    display: none;
    align-items: center;
    gap: 10px;
    border-left: 4px solid #28a745;
}

.form-success i {
    color: #28a745;
    font-size: 1.2rem;
}

/* RESPONSIVE */
@media(max-width:1024px){
    .hero{flex-direction: column; text-align: center; gap: 40px;}
    .contact-container{flex-direction:column;}
    .contact-form{min-width: 100%;}
    .hero-right {
        max-width: 100%;
    }
}

@media(max-width:768px){
    .hero h1{font-size: 2.5rem;}
    .info-section h2{font-size: 2.2rem;}
    .section-title h2{font-size: 2.2rem;}
    nav ul{gap: 15px;}
    .form-row{flex-direction: column; gap: 15px;}
    .radio-group{flex-direction: column; gap: 10px;}
}

@media(max-width:576px){
    .hero{padding: 30px 20px;}
    .hero-content{padding: 30px 20px;}
    .contact-form{padding: 30px 20px;}
    .info-cards, .services-grid{gap: 20px;}
    .submit-btn{width: 100%; justify-content: center;}
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

			<!-- <button class="mobile-menu-btn" id="mobileMenuBtn">
				<i class="fas fa-bars"></i>
			</button> -->

			<nav class="main-nav" id="mainNav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/home"> <i class="fas fa-home"></i> Home
					</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus">
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


					<li><a href="${pageContext.request.contextPath}/contactus" class="active">
							<i class="fas fa-users"></i> Contact Us
					</a></li>
				</ul>
			</nav>
		</div>
	</header>

<!-- TOP HERO -->
<section class="hero">
    <div class="hero-content hero-flex">
        <div class="hero-text">
            <h1>Get in Touch With Us</h1>
            <p>
                Our medical support team is available 24 7 for all your healthcare needs.
                Quality care when you need it most.
            </p>
        </div>
    </div>
    <div class="hero-image">
        <img src="${pageContext.request.contextPath}/views/images/hospital3.jpg" alt="Medical Support Team">
    </div>
</section>

<!-- ABOUT SECTION -->
<section class="info-section">
    <div class="container">
        <h2>About HealthCare Medical</h2>
        <p>
            HealthCare Medical is a trusted healthcare provider offering
            high-quality, patient-centered services using advanced medical
            technology and expert professionals. With over 15 years of experience,
            we are committed to delivering exceptional healthcare with compassion and innovation.
        </p>

        <div class="info-cards">
            <div class="card">
                <i class="fas fa-stethoscope"></i>
                <h3>24/7 Service</h3>
                <p>Round-the-clock emergency and consultation services</p>
            </div>
            <div class="card">
                <i class="fas fa-user-md"></i>
                <h3>Expert Doctors</h3>
                <p>Board-certified specialists with years of experience</p>
            </div>
            <div class="card">
                <i class="fas fa-clinic-medical"></i>
                <h3>Modern Facilities</h3>
                <p>State-of-the-art medical equipment and technology</p>
            </div>
            <div class="card">
                <i class="fas fa-heartbeat"></i>
                <h3>Patient Care</h3>
                <p>Personalized treatment plans and compassionate care</p>
            </div>
        </div>
    </div>
</section>

<!-- SERVICES SECTION -->
<section class="section-services">
    <div class="container">
        <div class="section-title">
            <h2>Our Medical Services</h2>
            <p>Comprehensive healthcare services across multiple specialties</p>
        </div>
        
        <div class="services-grid">
            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-heartbeat"></i>
                </div>
                <h3>Cardiology</h3>
                <p>Advanced heart care with cutting-edge diagnostic and treatment facilities including cardiac catheterization and echocardiography.</p>
            </div>
            
            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-brain"></i>
                </div>
                <h3>Neurology</h3>
                <p>Comprehensive neurological care for disorders of the brain and nervous system with advanced neuroimaging and treatment options.</p>
            </div>
            
            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-baby"></i>
                </div>
                <h3>Pediatrics</h3>
                <p>Specialized care for children from infancy through adolescence with child-friendly environment and expert pediatricians.</p>
            </div>
            
            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-x-ray"></i>
                </div>
                <h3>Radiology</h3>
                <p>State-of-the-art imaging services including MRI, CT scans, and ultrasound for accurate diagnosis and treatment planning.</p>
            </div>

            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-bone"></i>
                </div>
                <h3>Orthopedics</h3>
                <p>Comprehensive bone and joint care including trauma surgery, joint replacements, and sports medicine.</p>
            </div>
            
            <div class="service-card">
                <div class="service-icon">
                    <i class="fas fa-lungs"></i>
                </div>
                <h3>Pulmonology</h3>
                <p>Expert care for respiratory disorders including asthma, COPD, and sleep apnea with advanced pulmonary function testing.</p>
            </div>
        </div>
    </div>
</section>

<!-- CONTACT SECTION -->
<section class="contact-section">
    <div class="container">
        <div class="section-title">
            <h2>Contact Form</h2>
            <p>We're here to answer your questions and provide the care you need</p>
        </div>
        
        <div class="contact-container">
            <!-- LEFT COLUMN: FORM -->
            <div class="contact-form">
                <h3 class="form-title">Send Us a Message</h3>
                <p class="form-subtitle">Fill out the form below and our team will get back to you within 24 hours.</p>
                
                <div class="form-success" id="successMessage">
                    <i class="fas fa-check-circle"></i> Thank you for your message! We'll contact you soon.
                </div>
                
                <form class="contact-form" id="contactForm">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="hospital">Hospital / Organization</label>
                            <input type="text" id="hospital" placeholder="Enter your hospital/organization" required>
                        </div>
                        <div class="form-group">
                            <label for="contactPerson">Contact Person <span>*</span></label>
                            <input type="text" id="contactPerson" placeholder="Your full name" required>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="email">Email <span>*</span></label>
                            <input type="email" id="email" placeholder="example@mail.com" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone <span>*</span></label>
                            <input type="text" id="phone" placeholder="+91 9876543210" required>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="city">City</label>
                            <input type="text" id="city" placeholder="Your city">
                        </div>
                        <div class="form-group">
                            <label for="country">Country</label>
                            <input type="text" id="country" value="India">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="message">Message <span>*</span></label>
                        <textarea id="message" placeholder="Write your message here" rows="5" required></textarea>
                    </div>

                    <div class="form-group">
                        <label>Preferred Contact Method</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="contactMethod" value="phone" checked> Phone Call
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="contactMethod" value="email"> Email
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="contactMethod" value="whatsapp"> WhatsApp
                            </label>
                        </div>
                    </div>

                    <div style="text-align:center;margin-top:30px;">
                        <button type="submit" class="submit-btn">
                            <i class="fas fa-paper-plane"></i> Submit
                        </button>
                    </div>
                    
                    <p class="form-note">By submitting this form, you agree to our <a href="/privacy">Privacy Policy</a>.</p>
                </form>
            </div>

            <!-- RIGHT COLUMN: INFO / CONTENT -->
            <div class="hero-right">
                <h1>Need Assistance?</h1>
                <p>Our team is ready to answer your questions and help you
                schedule appointments, consultations, and provide support
                for any inquiries regarding our healthcare services.</p>
                <p><i class="fas fa-phone"></i> Call us: +91 12345 67890</p>
                <p><i class="fas fa-envelope"></i> Email: support@healthcare.com</p>
                <p><i class="fas fa-map-marker-alt"></i> Address: 123 Medical Street, Mumbai, India</p>
                <br>
                <h4>Working Hours</h4>
                <p><strong>Outpatient Department:</strong> 8:00 AM - 8:00 PM (Mon-Sat)</p>
                <p><strong>Emergency Department:</strong> 24/7 Open</p>
                <p><strong>Pharmacy:</strong> 7:00 AM - 11:00 PM (Daily)</p>
            </div>
        </div>
    </div>
</section>

<!-- BOTTOM CONTENT -->
<section class="bottom-content">
    <div class="container">
        <h2>Why Choose HealthCare Medical?</h2>
        <p>We combine compassionate care with advanced medical technology to ensure the best outcomes for our patients. Our expert doctors provide personalized treatment plans to meet individual needs.</p>
        <p>We offer 24/7 services, modern facilities, and dedicated staff to make your healthcare experience seamless and comfortable. Our commitment to excellence has made us one of the most trusted healthcare providers in the region.</p>
        <p>With NABH accreditation and ISO certification, we maintain the highest standards of quality and patient safety in all our services.</p>
    </div>
</section>


	
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
<!-- FOOTER -->
<footer>
    <div class="footer-container">
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


			<div class="footer-column">
				<h3>Contact Info</h3>
				<ul class="footer-links">
					<li><i class="fas fa-map-marker-alt"></i> 4th Floor, Gupta
						Tower, Science college Road, Civil Lines, Nagpur – 440001 (MS)
						INDIA</li>
					<li><i class="fas fa-phone"></i>9156248809, 9699836133</li>
					<li><i class="fa-solid fa-tty"></i> 0712 2557474, 0712 2557575</li>
					<li><i class="fas fa-envelope"></i>yuvicare.hims@manasindustry.com</li>
					<li><i class="fas fa-clock"></i> Emergency: 24/7</li>
				</ul>
			</div>
		</div>
    
    <div class="bottom">
        <p>  2020 HealthCare Medical Center. All Rights Reserved.</p>
         </div>
</footer>

<script>
    // Form Submission Handler
    document.getElementById('contactForm').addEventListener('submit', function(e) {
        e.preventDefault();
        
        const submitBtn = this.querySelector('.submit-btn');
        const successMessage = document.getElementById('successMessage');
        
        // Show loading state
        submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Sending...';
        submitBtn.disabled = true;
        
        // Simulate form submission (in real implementation, this would be an AJAX call)
        setTimeout(() => {
            // Show success message
            successMessage.style.display = 'flex';
            
            // Reset form
            this.reset();
            document.getElementById('country').value = 'India';
            
            // Reset button
            submitBtn.innerHTML = '<i class="fas fa-paper-plane"></i> Submit';
            submitBtn.disabled = false;
            
            // Scroll to success message
            successMessage.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
            
            // Hide success message after 5 seconds
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 5000);
        }, 1500);
    });
    
    // Phone number formatting
    const phoneInput = document.getElementById('phone');
    if(phoneInput) {
        phoneInput.addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, '');
            
            if(value.length > 10) {
                value = value.substring(0, 10);
            }
            
            if(value.length > 0) {
                value = '+91 ' + value;
            }
            
            e.target.value = value;
        });
    }
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            const href = this.getAttribute('href');
            if(href === '#') return;
            
            e.preventDefault();
            const targetElement = document.querySelector(href);
            if(targetElement) {
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

</html> 

 
  

