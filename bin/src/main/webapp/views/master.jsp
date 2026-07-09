<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Master | YUVICARE HIMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

        <style>
            /* ===== YUVICARE PREMIUM THEME ===== */
            :root {
                --primary: #41bfc1;
                --primary-dark: #38a8aa;
                --secondary: #ffd700;
                --accent: #2a8c8e;
                --light-bg: #E6F7FA;
                --card-bg: #ffffff;
                --dark-text: #2c3e50;
                --medium-text: #555555;
                --light-text: #777777;
                --shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
                --shadow-heavy: 0 15px 40px rgba(0, 0, 0, 0.12);
                --radius: 14px;
                --transition: all 0.3s ease;
            }

            /* ===== BASE ===== */
            body {
                margin: 0;
                font-family: 'Poppins', sans-serif;
                background-color: var(--light-bg);
            }

            /* ===== LAYOUT ===== */
            .wrapper {
                display: flex;
                min-height: 100vh;
            }

            /* ===== SIDEBAR ===== */
            .sidebar {
                width: 300px;
                background: linear-gradient(180deg, #40B4B4 0%, #38a8aa 100%);
                color: #fff;
                padding: 30px;
                box-shadow: 4px 0 20px rgba(0, 0, 0, 0.1);
                box-sizing: border-box;
                display: flex;
                flex-direction: column;
                position: fixed;
                height: 100vh;
                overflow-y: auto;
                border-right: 1px solid rgba(255, 255, 255, 0.1);
            }

            .logo-box {
                background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
                padding: 20px;
                margin-bottom: 40px;
                color: #333;
                border-radius: 10px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
                border: 1px solid rgba(64, 180, 180, 0.2);
                transition: var(--transition);
            }

            .logo-box:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            }

            .logo-title {
                font-weight: bold;
                font-size: 14px;
                text-transform: uppercase;
                margin-bottom: 5px;
                color: #333;
            }

            .logo-subtitle {
                color: #40B4B4;
                font-weight: bold;
                font-size: 16px;
            }

            .nav-menu {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .nav-menu li {
                padding: 15px 0;
                border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            }

            .nav-menu li a {
                color: white;
                text-decoration: none;
                font-size: 16px;
                font-weight: 500;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 12px 15px;
                border-radius: 8px;
                transition: var(--transition);
                position: relative;
            }

            .nav-menu li a::before {
                content: '';
                position: absolute;
                left: 0;
                top: 50%;
                transform: translateY(-50%);
                width: 3px;
                height: 0;
                background: #FFD700;
                border-radius: 0 3px 3px 0;
                transition: var(--transition);
            }

            .nav-menu li a:hover {
                background: rgba(255, 255, 255, 0.1);
                padding-left: 20px;
            }

            .nav-menu li a:hover::before {
                height: 60%;
            }

            .nav-menu li a.active {
                color: #FFD700;
                font-weight: bold;
                background: rgba(255, 215, 0, 0.15);
            }

            .nav-menu li a.active::before {
                height: 80%;
            }

            .nav-menu li a i.fa-chevron-down {
                font-size: 12px;
                margin-left: auto;
                transition: var(--transition);
            }

            /* ===== DROPDOWN SUBMENU ===== */
            .nav-menu li.has-submenu {
                position: relative;
            }

            .nav-menu .submenu {
                list-style: none;
                padding: 0;
                margin: 0;
                max-height: 0;
                overflow: hidden;
                background-color: rgba(0, 0, 0, 0.15);
                transition: max-height 0.3s ease, padding 0.3s ease;
            }

            .nav-menu .submenu.active {
                max-height: 700px;
                padding: 10px 0;
            }

            .nav-menu .submenu li {
                padding: 10px 0 10px 30px;
                border-bottom: none;
                position: relative;
            }

            .nav-menu .submenu li a {
                font-size: 14px;
                color: rgba(255, 255, 255, 0.9);
                padding: 10px 15px;
                border-radius: 6px;
                transition: var(--transition);
                margin: 2px 0;
                display: block;
                cursor: pointer;
                text-decoration: none;
                width: 100%;
            }

            .nav-menu .submenu li a:hover {
                color: #FFD700;
                background: rgba(255, 255, 255, 0.1);
                padding-left: 25px;
                opacity: 1;
            }

            .nav-menu .submenu li a.active {
                color: #FFD700;
                font-weight: bold;
                background: rgba(255, 215, 0, 0.2);
                border-left: 3px solid #FFD700;
            }

            .nav-menu li.has-submenu.active>a i.fa-chevron-down {
                transform: rotate(180deg);
            }

            /* ===== MAIN CONTENT ===== */
            .main {
                flex: 1;
                padding: 50px 60px;
                margin-left: 300px;
                background: linear-gradient(135deg, #E6F7FA 0%, #F0F9FA 50%, #E6F7FA 100%);
                background-size: 200% 200%;
                animation: gradientShift 15s ease infinite;
                min-height: 100vh;
            }

            @keyframes gradientShift {
                0% {
                    background-position: 0% 50%;
                }

                50% {
                    background-position: 100% 50%;
                }

                100% {
                    background-position: 0% 50%;
                }
            }

            .section {
                background: var(--card-bg);
                border-radius: var(--radius);
                padding: 25px 30px;
                margin-bottom: 30px;
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08), 0 2px 8px rgba(0, 0, 0, 0.04);
                border: 1px solid rgba(65, 191, 193, 0.1);
                transition: var(--transition);
                position: relative;
                overflow: hidden;
            }

            .section::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                height: 4px;
                background: linear-gradient(90deg, var(--primary), var(--accent), var(--primary));
                background-size: 200% 100%;
                animation: shimmer 3s ease infinite;
            }

            @keyframes shimmer {
                0% {
                    background-position: -200% 0;
                }

                100% {
                    background-position: 200% 0;
                }
            }

            .section:hover {
                transform: translateY(-5px);
                box-shadow: 0 15px 50px rgba(0, 0, 0, 0.12), 0 5px 15px rgba(0, 0, 0, 0.08);
            }

            .section-title {
                font-size: 28px;
                font-weight: 700;
                color: var(--dark-text);
                margin-bottom: 10px;
                position: relative;
                padding-bottom: 10px;
                display: flex;
                align-items: center;
                gap: 12px;
            }

            .section-title::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 60px;
                height: 4px;
                background: linear-gradient(90deg, var(--primary), var(--accent));
                border-radius: 2px;
            }

            .section-title i {
                color: var(--primary);
                font-size: 24px;
            }

            .section-description {
                font-size: 15px;
                color: var(--medium-text);
                margin-bottom: 20px;
                line-height: 1.6;
            }

            .section-description ul {
                list-style: none;
                padding-left: 0;
                margin: 0;
            }

            .section-description li {
                padding-left: 28px;
                position: relative;
                margin-bottom: 12px;
                font-size: 15px;
                line-height: 1.6;
            }

            .section-description li:before {
                content: "✓";
                position: absolute;
                left: 0;
                color: var(--primary);
                font-weight: bold;
                font-size: 16px;
                background: rgba(65, 191, 193, 0.1);
                width: 22px;
                height: 22px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 12px;
            }

            .section-divider {
                width: 100%;
                height: 1px;
                background: linear-gradient(90deg, transparent, rgba(65, 191, 193, 0.3), transparent);
                margin: 25px 0;
                position: relative;
            }

            .section-divider::before,
            .section-divider::after {
                content: '';
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                width: 12px;
                height: 12px;
                background: var(--primary);
                border-radius: 50%;
                box-shadow: 0 0 0 4px rgba(65, 191, 193, 0.1);
            }

            .section-divider::before {
                left: 20%;
            }

            .section-divider::after {
                right: 20%;
            }

            .section-subtitle {
                font-size: 20px;
                font-weight: 700;
                color: var(--dark-text);
                margin-bottom: 12px;
                margin-top: 5px;
                display: flex;
                align-items: center;
                gap: 10px;
                position: relative;
                padding-left: 15px;
            }

            .section-subtitle::before {
                content: '';
                position: absolute;
                left: 0;
                top: 50%;
                transform: translateY(-50%);
                width: 5px;
                height: 30px;
                background: linear-gradient(180deg, var(--primary), var(--accent));
                border-radius: 3px;
            }

            .section-subtitle i {
                color: var(--primary);
                font-size: 20px;
                opacity: 0.8;
            }

            /* ===== IMAGE CONTAINER ===== */
            .image-container {
                margin-top: 20px;
                text-align: center;
                background: linear-gradient(135deg, #f8f9fa 0%, #ffffff 100%);
                padding: 15px;
                border-radius: 8px;
                border: 1px solid rgba(65, 191, 193, 0.15);
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05), inset 0 1px 0 rgba(255, 255, 255, 0.8);
                position: relative;
                overflow: hidden;
                transition: var(--transition);
            }

            .image-container::before {
                content: '';
                position: absolute;
                top: -50%;
                left: -50%;
                width: 200%;
                height: 200%;
                background: radial-gradient(circle, rgba(65, 191, 193, 0.05) 0%, transparent 70%);
                animation: rotate 20s linear infinite;
            }

            @keyframes rotate {
                0% {
                    transform: rotate(0deg);
                }

                100% {
                    transform: rotate(360deg);
                }
            }

            .image-container:hover {
                border-color: rgba(65, 191, 193, 0.3);
                box-shadow: 0 4px 20px rgba(65, 191, 193, 0.12), inset 0 1px 0 rgba(255, 255, 255, 0.9);
                transform: translateY(-2px);
            }

            .image-container img {
                max-width: 100%;
                height: auto;
                border-radius: 6px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
                position: relative;
                z-index: 1;
                transition: var(--transition);
            }

            .image-container:hover img {
                box-shadow: 0 6px 20px rgba(0, 0, 0, 0.12);
            }

            .image-placeholder {
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                padding: 60px 20px;
                border-radius: 8px;
                color: var(--medium-text);
                font-style: italic;
                min-height: 300px;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
            }

            /* ===== RESPONSIVE ===== */
            @media (max-width: 768px) {
                .sidebar {
                    width: 100%;
                    position: relative;
                    height: auto;
                }

                .main {
                    margin-left: 0;
                    padding: 20px;
                }

                .section {
                    padding: 20px;
                }
            }
        </style>
    </head>

    <body>

        <div class="wrapper">

            <!-- SIDEBAR -->
            <div class="sidebar">
                <div class="logo-box">
                    <div class="logo-title">Hospital Information Management System</div>
                    <div class="logo-subtitle">MANAS YUVICARE</div>
                </div>

                <ul class="nav-menu">
                    <li><a href="${pageContext.request.contextPath}/aboutus">About us</a></li>
                    <li><a href="${pageContext.request.contextPath}/aboutproduct">About Product</a></li>
                    <li><a href="${pageContext.request.contextPath}/views/login.jsp">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/dashboard.jsp">Main Dashboard</a></li>
                    <li><a href="#">OPD (Out-Patient Department) <i class="fa fa-chevron-down"></i></a></li>
                    <li><a href="#">IPD (In-Patient Department) <i class="fa fa-chevron-down"></i></a></li>
                    <li><a href="#">Investigation <i class="fa fa-chevron-down"></i></a></li>
                    <li><a href="#">Store & Pharmacy <i class="fa fa-chevron-down"></i></a></li>
                    <li><a href="#">Account <i class="fa fa-chevron-down"></i></a></li>
                    <li class="has-submenu active">
                        <a href="#" onclick="toggleSubmenu(event, this)">General <i class="fa fa-chevron-down"></i></a>
                        <ul class="submenu active">
                            <li><a href="${pageContext.request.contextPath}/payroll">Payroll</a></li>
                            <li><a href="${pageContext.request.contextPath}/patient">Patient</a></li>
                            <li><a href="${pageContext.request.contextPath}/mrd">MRD (Medical Record Department)</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/dietary">Dietary</a></li>
                            <li><a href="${pageContext.request.contextPath}/nabh">NABH/Accreditation</a></li>
                            <li><a href="${pageContext.request.contextPath}/crm">CRM</a></li>
                            <li><a href="${pageContext.request.contextPath}/bloodbank">Blood bank</a></li>
                            <li><a href="${pageContext.request.contextPath}/housekeeping">Housekeeping</a></li>
                            <li><a href="${pageContext.request.contextPath}/master" class="active">Master</a></li>
                            <li><a href="${pageContext.request.contextPath}/mis">MIS (Management Information System)</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/contactus">Contact us</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                </ul>
            </div>

            <!-- MAIN CONTENT -->
            <div class="main">

                <!-- Main Title -->
                <div class="section">
                    <h2 class="section-title">
                        <i class="fas fa-cog"></i>
                        Master Management System
                    </h2>
                    <p style="color: var(--medium-text); font-size: 16px; margin-top: 10px; line-height: 1.6;">
                        Comprehensive master data and system configuration management solution.
                    </p>
                </div>

                <div class="section-divider"></div>

                <!-- Setup Master Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-sliders-h"></i>
                        Setup Master
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Enter master data in the system.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master1.png" alt="Setup Master"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Hospital Profile Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-hospital"></i>
                        Hospital Profile
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Set Hospital Profile in the system.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master2.png" alt="Hospital Profile"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- User Dashboard Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-users"></i>
                        User Dashboard
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>View user list.</li>
                            <li>Add/edit User Profile.</li>
                            <li>Can be accessed only by authorized users.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master3.png" alt="User Dashboard"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Add user Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-user-plus"></i>
                        Add user
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Add user details to create User Profile.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master4.png" alt="Add User"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Setup Appointment Diaries Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-calendar-alt"></i>
                        Setup Appointment Diaries
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>View Doctor's Appointment Diary.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master5.png"
                            alt="Setup Appointment Diaries"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Schedule Doctor diary Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-calendar-check"></i>
                        Schedule Doctor diary
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Schedule an appointment with a Doctor.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/master6.png"
                            alt="Schedule Doctor diary"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <!-- Footer -->
                <div
                    style="text-align: center; font-size: 11px; color: var(--medium-text); margin-top: 40px; padding: 20px;">
                    Copyright © 2021. All Rights Reserved by Manas Agro Industries and Infrastructure Limited
                </div>

            </div>

        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            // Toggle dropdown submenu
            function toggleSubmenu(event, element) {
                event.preventDefault();

                const listItem = element.parentElement;
                const submenu = listItem.querySelector('.submenu');

                // Toggle active class on list item
                listItem.classList.toggle('active');

                // Toggle active class on submenu
                if (submenu) {
                    submenu.classList.toggle('active');
                }
            }
        </script>

    </body>

    </html>