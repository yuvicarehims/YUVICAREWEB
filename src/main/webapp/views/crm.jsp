<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>CRM | YUVICARE HIMS</title>
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

            /* ===== DASHBOARD STYLES ===== */
            .dashboard-container {
                margin-top: 20px;
            }

            .dashboard-header {
                font-size: 20px;
                font-weight: 600;
                color: var(--dark-text);
                margin-bottom: 25px;
                text-transform: uppercase;
            }

            .dashboard-grid {
                display: grid;
                grid-template-columns: 1fr 2fr 1fr;
                gap: 30px;
                margin-bottom: 30px;
            }

            .statistics-panel {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            .stat-item {
                display: flex;
                align-items: center;
                gap: 15px;
                padding: 15px;
                background: #f8f9fa;
                border-radius: 8px;
            }

            .stat-icon {
                width: 50px;
                height: 50px;
                background: var(--primary);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 24px;
                flex-shrink: 0;
            }

            .stat-label {
                font-size: 14px;
                color: var(--medium-text);
                font-weight: 500;
            }

            .center-panel {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            .total-amount {
                font-size: 36px;
                font-weight: bold;
                color: var(--primary);
                text-align: center;
                padding: 20px;
                background: linear-gradient(135deg, rgba(65, 191, 193, 0.1), rgba(65, 191, 193, 0.05));
                border-radius: 8px;
            }

            .stat-numbers {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 15px;
            }

            .stat-number {
                text-align: center;
                padding: 15px;
                background: #f8f9fa;
                border-radius: 8px;
            }

            .stat-number-label {
                font-size: 12px;
                color: var(--medium-text);
                margin-bottom: 5px;
            }

            .stat-number-value {
                font-size: 24px;
                font-weight: bold;
                color: var(--dark-text);
            }

            .chart-panel {
                padding: 20px;
                background: #f8f9fa;
                border-radius: 8px;
            }

            .chart-title {
                font-size: 16px;
                font-weight: 600;
                color: var(--dark-text);
                margin-bottom: 20px;
                text-align: center;
            }

            .bar-chart {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .bar-item {
                display: flex;
                align-items: center;
                gap: 15px;
            }

            .bar-label {
                width: 80px;
                font-size: 14px;
                color: var(--dark-text);
                font-weight: 500;
            }

            .bar-container {
                flex: 1;
                height: 30px;
                background: #e0e0e0;
                border-radius: 15px;
                overflow: hidden;
                position: relative;
            }

            .bar-fill {
                height: 100%;
                background: linear-gradient(90deg, var(--primary), var(--accent));
                border-radius: 15px;
                display: flex;
                align-items: center;
                justify-content: flex-end;
                padding-right: 10px;
                color: white;
                font-weight: 600;
                font-size: 12px;
            }

            /* ===== FORM STYLES ===== */
            .form-container {
                margin-top: 20px;
            }

            .form-header {
                font-size: 20px;
                font-weight: 600;
                color: var(--dark-text);
                margin-bottom: 25px;
                text-transform: uppercase;
            }

            .filter-grid {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                margin-bottom: 8px;
                font-weight: 500;
                color: var(--dark-text);
            }

            .form-group input,
            .form-group select,
            .form-group textarea {
                width: 100%;
                padding: 10px 15px;
                border: 1px solid #ddd;
                border-radius: 6px;
                font-size: 14px;
                transition: var(--transition);
                font-family: 'Poppins', sans-serif;
            }

            .form-group input:focus,
            .form-group select:focus,
            .form-group textarea:focus {
                outline: none;
                border-color: var(--primary);
                box-shadow: 0 0 0 3px rgba(65, 191, 193, 0.1);
            }

            .form-group textarea {
                min-height: 120px;
                resize: vertical;
            }

            .btn {
                padding: 10px 20px;
                border: none;
                border-radius: 6px;
                font-weight: 500;
                cursor: pointer;
                transition: var(--transition);
                margin-right: 10px;
                font-size: 14px;
            }

            .btn-primary {
                background-color: var(--primary);
                color: white;
            }

            .btn-primary:hover {
                background-color: var(--primary-dark);
            }

            .btn-success {
                background-color: #28a745;
                color: white;
            }

            .btn-success:hover {
                background-color: #218838;
            }

            .btn-secondary {
                background-color: #6c757d;
                color: white;
            }

            .btn-secondary:hover {
                background-color: #5a6268;
            }

            /* ===== TABLE STYLES ===== */
            .table-container {
                overflow-x: auto;
                margin-top: 20px;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
                background: white;
            }

            .table thead {
                background-color: #f8f9fa;
            }

            .table th {
                padding: 12px;
                text-align: left;
                font-weight: 600;
                color: var(--dark-text);
                border-bottom: 2px solid #dee2e6;
            }

            .table td {
                padding: 12px;
                border-bottom: 1px solid #dee2e6;
                color: var(--medium-text);
            }

            .table tbody tr:hover {
                background-color: #f8f9fa;
            }

            .action-btns {
                display: flex;
                gap: 5px;
            }

            .action-btn {
                width: 28px;
                height: 28px;
                border: 1px solid #ddd;
                background: white;
                border-radius: 4px;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: var(--transition);
            }

            .action-btn:hover {
                background: var(--primary);
                color: white;
                border-color: var(--primary);
            }

            .action-btn.edit {
                color: #ffc107;
            }

            .action-btn.delete {
                color: #dc3545;
            }

            .status-badge {
                padding: 4px 12px;
                border-radius: 12px;
                font-size: 12px;
                font-weight: 500;
            }

            .status-pending {
                background: #fff3cd;
                color: #856404;
            }

            .status-completed {
                background: #d4edda;
                color: #155724;
            }

            .status-sent {
                background: #cce5ff;
                color: #004085;
            }

            /* ===== RESPONSIVE ===== */
            @media (max-width: 1200px) {
                .dashboard-grid {
                    grid-template-columns: 1fr;
                }

                .filter-grid {
                    grid-template-columns: 1fr;
                }

                .stat-numbers {
                    grid-template-columns: 1fr;
                }
            }

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
                            <li><a href="${pageContext.request.contextPath}/crm" class="active">CRM</a></li>
                            <li><a href="${pageContext.request.contextPath}/bloodbank">Blood bank</a></li>
                            <li><a href="${pageContext.request.contextPath}/housekeeping">Housekeeping</a></li>
                            <li><a href="${pageContext.request.contextPath}/master">Master</a></li>
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
                        <i class="fas fa-users-cog"></i>
                        CRM (Customer Relationship Management)
                    </h2>
                    <p style="color: var(--medium-text); font-size: 16px; margin-top: 10px; line-height: 1.6;">
                        Comprehensive customer relationship management solution for enhanced patient engagement.
                    </p>
                </div>

                <div class="section-divider"></div>

                <!-- Marketing Dashboard Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-chart-line"></i>
                        Marketing Dashboard
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Get graphical view of patient's data.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/crm1.png" alt="Marketing Dashboard"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Connect Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-comments"></i>
                        Connect
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>Send group messages to the registered patients.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/crm2.png" alt="Connect"
                            style="max-width: 100%; height: auto; border-radius: 4px; box-shadow: var(--shadow);" />
                    </div>
                </div>

                <div class="section-divider"></div>

                <!-- Follow up list Section -->
                <div class="section">
                    <h3 class="section-subtitle">
                        <i class="fas fa-list-check"></i>
                        Follow up list
                    </h3>
                    <div class="section-description">
                        <ul>
                            <li>View the list of patient's for follow-up visit.</li>
                        </ul>
                    </div>

                    <div class="image-container">
                        <img src="${pageContext.request.contextPath}/views/images/crm3.png" alt="Follow up list"
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