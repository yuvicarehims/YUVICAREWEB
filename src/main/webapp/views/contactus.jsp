
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
:root{
    /* Updated to match YUVICARE color scheme */
    --primary:#41bfc1;
    --primary-dark:#2a8c8e;
    --secondary:#ffd700;
    --light-bg:#dff3f6;
    --border:#e0f0f2;
    --shadow:0 18px 45px rgba(0,0,0,.15);
    --accent-red:#e63946;
    --neutral-dark:#333333;
    --neutral-gray:#555555;
    --white:#ffffff;
}

*{margin:0;padding:0;box-sizing:border-box;}
body{
    font-family:'Roboto',sans-serif;
    background:var(--light-bg);
    color:#333;
    line-height:1.6;
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

.container{
    max-width:1200px;
    margin:auto;
    padding:0 20px;
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
</style>
</head>

<body>

<header>
    <div class="container header-container">
        <a href="/" class="logo">
            <i class="fas fa-hospital"></i>
            <div class="logo-text">
                <h2>HealthCare Medical</h2>
                <div class="logo-subtitle">Advanced Healthcare</div>
            </div>
        </a>
        <nav>
            <ul>
                <li><a href="/home"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="/product"><i class="fas fa-th-large"></i> About Product</a></li>
                    <li><a href="/aboutus" class="active"><i class="fas fa-comment"></i> About Us</a></li>
                    <li><a href="/contactus"><i class="fas fa-phone"></i> Contact</a></li>
            </ul>
        </nav>
        <a href="tel:+911234567890" class="emergency-btn">
            <i class="fas fa-phone-alt"></i> Emergency
        </a>
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

<!-- FOOTER -->
<footer>
    <div class="footer-container">
        <div class="footer-column">
            <h3>HealthCare Medical</h3>
            <div class="footer-about">
                <p>Providing exceptional healthcare services with compassion, innovation, and expertise since 2005.</p>
                <div class="social-links">
                    <a href="#" class="social-link" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="Twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </div>
        </div>
        
        <div class="footer-column">
            <h3>Quick Links</h3>
            <ul class="footer-links">
                <li><a href="/">Home</a></li>
                <li><a href="/about">About Us</a></li>
                <li><a href="/services">Services</a></li>
                <li><a href="/doctors">Our Doctors</a></li>
                <li><a href="/careers">Careers</a></li>
            </ul>
        </div>
        
        <div class="footer-column">
            <h3>Medical Services</h3>
            <ul class="footer-links">
                <li><a href="/services/cardiology">Cardiology</a></li>
                <li><a href="/services/neurology">Neurology</a></li>
                <li><a href="/services/orthopedics">Orthopedics</a></li>
                <li><a href="/services/pediatrics">Pediatrics</a></li>
                <li><a href="/services/emergency">Emergency Care</a></li>
            </ul>
        </div>
        
        <div class="footer-column">
            <h3>Contact Info</h3>
            <ul class="footer-links">
                <li><i class="fas fa-map-marker-alt"></i> 123 Medical Street, Mumbai</li>
                <li><i class="fas fa-phone-alt"></i> +91 22 1234 5678</li>
                <li><i class="fas fa-envelope"></i> info@healthcaremedical.com</li>
                <li><i class="fas fa-clock"></i> Emergency: 24/7</li>
            </ul>
        </div>
    </div>
    
    <div class="bottom">
        <p>  2025 HealthCare Medical Center. All Rights Reserved.</p>
        <p><a href="/privacy">Privacy Policy</a> | <a href="/terms">Terms of Service</a></p>
        <p style="margin-top:10px;font-size:13px;">NABH Accredited Hospital | ISO 9001:2015 Certified</p>
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
</script>

</body>

</html>

</html> 

 
  

