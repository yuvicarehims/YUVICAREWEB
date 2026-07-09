<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product - Manas Yuvicare | Hospital Information Management System</title>
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
                position: sticky;
                top: 0;
                z-index: 1000;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
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
 .nav-menu li a {
    color: white;
    text-decoration: none;
    font-weight: 600;
    font-size: 14px;
    padding: 10px 18px;
    border-radius: 20px;
    transition: all 0.3s ease;
    background: rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    gap: 6px;
}

.nav-menu li a:hover {
    background: white;
    color: var(--sea-teal);
    transform: translateY(-2px);
}

.nav-menu li a.active {
    background: white;
    color: var(--sea-teal);
    font-weight: 700;
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
                   <li><a href="/home"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="/product"><i class="fas fa-th-large"></i> About Product</a></li>
                    <li><a href="/aboutus" class="active"><i class="fas fa-comment"></i> About Us</a></li>
                    <li><a href="/contactus"><i class="fas fa-phone"></i> Contact</a></li>
              
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
                    <li class="breadcrumb-item active" aria-current="page">Product</li>
                </ol>
            </nav>

            <div class="card-custom">
                <h2><i class="fas fa-hospital-symbol"></i> Advanced HIMS Ecosystem</h2>
                <p><strong>Manas Yuvicare</strong> is an enterprise-grade Hospital Information Management System built
                    for the future. Our 17+ core modules integrate seamlessly to automate every clinical and
                    administrative workflow in your institution.</p>
                <div class="row mt-4">
                    <div class="col-md-6">
                        <p><i class="fas fa-check-circle text-primary me-2"></i> Voice-to-Text Clinical Documentation
                        </p>
                    </div>
                    <div class="col-md-6">
                        <p><i class="fas fa-check-circle text-primary me-2"></i> IoT Equipment Data Auto-Capture</p>
                    </div>
                    <div class="col-md-6">
                        <p><i class="fas fa-check-circle text-primary me-2"></i> NABH/NABL Standard Compliance</p>
                    </div>
                    <div class="col-md-6">
                        <p><i class="fas fa-check-circle text-primary me-2"></i> Advanced AI-Powered Diagnostics</p>
                    </div>
                </div>
                <div class="mt-4">
                    <a href="${pageContext.request.contextPath}/product_details" class="btn-medical"><i
                            class="fas fa-eye me-2"></i>Explore
                        Platform</a>
                    <a href="${pageContext.request.contextPath}/free-trial" class="btn-medical"><i
                            class="fas fa-rocket me-2"></i>Schedule
                        Demo</a>
                </div>
            </div>

            <!-- Advanced Dashboard -->
            <div class="row g-4 mb-5">
                <div class="col-lg-8">
                    <div class="card-custom h-100 mb-0">
                        <h3><i class="fas fa-chart-pie me-2"></i> Departmental Workload</h3>
                        <div style="height: 350px;"><canvas id="workloadChart"></canvas></div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <div class="metric-card">
                                <div class="metric-label">ER Waiting Time</div>
                                <div class="metric-value">12 <small
                                        style="font-size: 14px; font-weight: 500;">mins</small></div>
                                <div class="trend-down"><i class="fas fa-arrow-down"></i> 15% from last hr</div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="metric-card">
                                <div class="metric-label">Lab TAT (Avg)</div>
                                <div class="metric-value">4.2 <small
                                        style="font-size: 14px; font-weight: 500;">hrs</small></div>
                                <div class="trend-up"><i class="fas fa-arrow-up"></i> 2.1% improvement</div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="card-custom py-3 px-4 mb-0" style="background: var(--sea-foam); border: none;">
                                <h5
                                    style="font-size: 14px; font-weight: 700; color: var(--sea-teal); margin-bottom: 15px;">
                                    LIVE CLINICAL FEED</h5>
                                <div id="feed"
                                    style="font-size: 12px; color: #334155; height: 180px; overflow-y: auto; padding-right: 5px;">
                                    <div class="mb-2"><strong>18:55</strong> - OT 1: Surgical procedure "Appendectomy"
                                        successfully completed.</div>
                                    <div class="mb-2"><strong>18:52</strong> - Diagnostics: New MRI scan report uploaded
                                        for Patient #8821.</div>
                                    <div class="mb-2"><strong>18:48</strong> - Billing: Invoice generated for IPD
                                        Patient Room 304.</div>
                                    <div class="mb-2"><strong>18:41</strong> - Path Lab: COVID Result #421 Negative
                                    </div>
                                    <div class="mb-2"><strong>18:38</strong> - ER: Triage Level 1 Patient Admitted</div>
                                    <div class="mb-2"><strong>18:35</strong> - Pharmacy: Stock Alert - Insulin Glargine
                                    </div>
                                    <div class="mb-2"><strong>18:30</strong> - Nursing: Medication administration
                                        recorded for Ward B.</div>
                                    <div class="mb-2"><strong>18:25</strong> - Admissions: New patient registered via
                                        Online Portal.</div>
                                    <div class="mb-2"><strong>18:15</strong> - Discharge: Patient #772 cleared for
                                        discharge from Cardiology.</div>
                                    <div class="mb-2"><strong>18:05</strong> - Blood Bank: O-ve stock replenished (5
                                        units).</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Elaborated Why Choose Section -->
            <div class="card-custom">
                <h3 class="text-center mb-5">Why Choose Manas Yuvicare?</h3>
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="why-choose-card">
                            <i class="fas fa-microscope"></i>
                            <h5>Clinical Precision</h5>
                            <p>Empower your doctors with evidence-based decision support, integrated EMR, and
                                speech-to-text clinical notes that ensure 100% data accuracy and faster outpatient
                                turnaround.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="why-choose-card">
                            <i class="fas fa-cog"></i>
                            <h5>Operational Mastery</h5>
                            <p>Eliminate leakages with automated revenue cycle management, paperless nursing stations,
                                and real-time inventory tracking spanning from central stores to individual wards.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="why-choose-card">
                            <i class="fas fa-user-check"></i>
                            <h5>Patient First Design</h5>
                            <p>Reduce wait times by 40% with smart queue management, provide effortless portal access
                                for lab results, and ensure a smooth discharge experience with integrated billing.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-custom">
                <h3 class="mb-5 text-center fw-bold">Comprehensive System Modules</h3>
                <div class="modules-grid">
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-user-md"></i></div>
                        <h6>OPD Management</h6>
                        <p class="small text-muted mb-0">Registration & Appointments</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-procedures"></i></div>
                        <h6>IPD Management</h6>
                        <p class="small text-muted mb-0">Admissions & Bed Management</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-pills"></i></div>
                        <h6>Pharmacy</h6>
                        <p class="small text-muted mb-0">Inventory & Smart Dispensing</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-flask"></i></div>
                        <h6>Laboratory</h6>
                        <p class="small text-muted mb-0">LIS & Automated Reporting</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-x-ray"></i></div>
                        <h6>Radiology (RIS)</h6>
                        <p class="small text-muted mb-0">Imaging & PACS Integration</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-syringe"></i></div>
                        <h6>Operation Theatre</h6>
                        <p class="small text-muted mb-0">OT Scheduling & Checklists</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-file-medical"></i></div>
                        <h6>EMR System</h6>
                        <p class="small text-muted mb-0">Digital Health Records</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-user-nurse"></i></div>
                        <h6>Nursing Care</h6>
                        <p class="small text-muted mb-0">Ward & Care Coordination</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-users-cog"></i></div>
                        <h6>HR & Payroll</h6>
                        <p class="small text-muted mb-0">Staff Management</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-calculator"></i></div>
                        <h6>Accounts & Billing</h6>
                        <p class="small text-muted mb-0">Revenue Cycle Management</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-warehouse"></i></div>
                        <h6>Inventory & Store</h6>
                        <p class="small text-muted mb-0">Central Supply & Medical Items</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-tint"></i></div>
                        <h6>Blood Bank</h6>
                        <p class="small text-muted mb-0">Stock & Donor Tracking</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-ambulance"></i></div>
                        <h6>Ambulance</h6>
                        <p class="small text-muted mb-0">Fleet & Dispatch Control</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-shield-alt"></i></div>
                        <h6>TPA & Insurance</h6>
                        <p class="small text-muted mb-0">Claims & Authorization</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-mobile-alt"></i></div>
                        <h6>Patient Portal</h6>
                        <p class="small text-muted mb-0">Online Access & Results</p>
                    </div>
                    <div class="module-card">
                        <div class="module-icon"><i class="fas fa-utensils"></i></div>
                        <h6>Dietary & Kitchen</h6>
                        <p class="small text-muted mb-0">Nutrition & Meal Tracking</p>
                    </div>

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
        <script>
            let workloadChart;
            function initChart() {
                const ctx = document.getElementById('workloadChart').getContext('2d');
                workloadChart = new Chart(ctx, {
                    type: 'doughnut',
                    data: {
                        labels: ['OPD', 'IPD', 'Emergency', 'Laboratory', 'Radiology'],
                        datasets: [{
                            data: [35, 25, 15, 15, 10],
                            backgroundColor: ['#40E0D0', '#00CED1', '#008B8B', '#AFEEEE', '#E0FFFF'],
                            borderWidth: 0, hoverOffset: 15
                        }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: { legend: { position: 'bottom', labels: { padding: 20, font: { family: "'Poppins'", size: 12 } } } },
                        cutout: '70%'
                    }
                });
            }
            function updateLiveFeed() {
                const feed = document.getElementById('feed');
                const now = new Date();
                const time = now.getHours() + ':' + now.getMinutes().toString().padStart(2, '0');
                const events = [
                    'Admission: Room 402 - Gen Medicine',
                    'Lab Order: Stat CBC #582',
                    'Billing: Discharge Clearance #109',
                    'Supply: Low PPE Stock - Floor 3',
                    'Critical: Glucose Level #332 - High'
                ];
                const event = events[Math.floor(Math.random() * events.length)];
                const div = document.createElement('div');
                div.className = 'mb-2';
                div.innerHTML = `<strong>${time}</strong> - ${event}`;
                feed.prepend(div);
                if (feed.children.length > 4) feed.removeChild(feed.lastChild);
            }
            document.addEventListener('DOMContentLoaded', () => { initChart(); setInterval(updateLiveFeed, 10000); });
        </script>
    </body>

    </html>