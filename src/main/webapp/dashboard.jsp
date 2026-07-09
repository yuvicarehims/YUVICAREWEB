<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Main Dashboard | YUVICARE HIMS</title>
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

                --gradient-primary: linear-gradient(135deg, var(--primary), var(--accent));
                --gradient-dark: linear-gradient(135deg, var(--accent), #1a6d6f);

                --light-bg: #f8fcfc;
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
                background: linear-gradient(rgba(255, 255, 255, 0.92), rgba(255, 255, 255, 0.92)),
                url('${pageContext.request.contextPath}/views/images/hospital1.jpg');
                background-size: cover;
                background-position: center;
            }

            /* ===== LAYOUT ===== */
            .wrapper {
                display: flex;
                min-height: 100vh;
            }

            /* ===== SIDEBAR ===== */
            .sidebar {
                width: 300px;
                background-color: #40B4B4;
                color: #fff;
                padding: 30px;
                box-shadow: var(--shadow-heavy);
                box-sizing: border-box;
                display: flex;
                flex-direction: column;
                position: fixed;
                height: 100vh;
                overflow-y: auto;
            }

            .logo-box {
                background-color: white;
                padding: 15px;
                margin-bottom: 40px;
                color: #333;
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
                cursor: pointer;
            }

            .nav-menu li a:hover {
                opacity: 0.8;
            }

            .nav-menu li a.active {
                color: #FFD700;
                font-weight: bold;
            }

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
                max-height: 1000px;
                padding: 10px 0;
            }

            .nav-menu .submenu li {
                padding: 10px 0 10px 30px;
                border-bottom: none;
            }

            .nav-menu .submenu li a {
                font-size: 14px;
                color: rgba(255, 255, 255, 0.9);
                padding: 5px 0;
            }

            .nav-menu .submenu li a:hover {
                color: #FFD700;
                opacity: 1;
            }

            .nav-menu li.has-submenu.active>a i.fa-chevron-down {
                transform: rotate(180deg);
            }

            /* ===== MAIN CONTENT ===== */
            .main {
                flex: 1;
                padding: 40px 60px;
                margin-left: 300px;
                background-color: #E6F7FA;
            }

            .page-title {
                font-size: 32px;
                font-weight: 600;
                color: var(--dark-text);
                margin-bottom: 40px;
                /* Matched to ipd_department.jsp (was 20px) */
                text-align: left;
            }

            .section-title,
            .card h3 {
                font-size: 18px;
                font-weight: 600;
                color: #2c3e50;
                margin-bottom: 15px;
                margin-top: 20px;
            }

            .card {
                background: var(--card-bg);
                border-radius: var(--radius);
                padding: 30px;
                box-shadow: var(--shadow);
                border: 1px solid #eef0f3;
                margin-bottom: 30px;
            }

            .info-list {
                margin-bottom: 20px;
                padding-left: 20px;
                font-size: 14px;
                color: var(--medium-text);
            }

            /* Table Box Styling */
            .table-box {
                overflow-x: auto;
                margin-top: 15px;
            }

            .table-box table {
                width: 100%;
                border-collapse: collapse;
            }

            .table-box th {
                background-color: var(--light-bg);
                color: var(--dark-text);
                font-weight: 600;
                padding: 12px;
                border-bottom: 2px solid #ddd;
            }

            .table-box td {
                padding: 12px;
                border-bottom: 1px solid #eee;
                color: var(--medium-text);
            }

            /* Buttons matching theme */
            .view-btn,
            .print-btn,
            button {
                background-color: var(--primary);
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 6px;
                font-weight: 500;
                transition: var(--transition);
            }

            .view-btn:hover,
            .print-btn:hover,
            button:hover {
                background-color: var(--primary-dark);
                transform: translateY(-1px);
            }

            /* Specific Button Types */
            .btn-secondary {
                background-color: #95a5a6 !important;
            }

            .btn-success {
                background-color: #27ae60 !important;
            }

            .btn-danger {
                background-color: #c0392b !important;
            }

            /* Status Badges */
            .status {
                padding: 5px 12px;
                border-radius: 20px;
                font-size: 12px;
                font-weight: 600;
                display: inline-block;
            }

            .status.confirmed,
            .status.completed,
            .status.approved {
                background-color: #27ae60;
                color: white;
            }

            .status.pending,
            .status.partial {
                background-color: #f39c12;
                color: white;
            }

            .status.cancelled,
            .status.rejected {
                background-color: #c0392b;
                color: white;
            }

            /* Popups */
            .popup {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 1000;
                justify-content: center;
                align-items: center;
            }

            .popup-content {
                background-color: #fff;
                padding: 30px;
                width: 60%;
                border-radius: var(--radius);
                position: relative;
                box-shadow: var(--shadow-heavy);
            }

            .popup .close {
                position: absolute;
                top: 15px;
                right: 20px;
                font-size: 25px;
                cursor: pointer;
                color: #999;
            }

            /* Hide pages by default except the first one */
            .page {
                display: none;
            }

            #appointment {
                display: block;
            }

            /* Default page */

            /* IPD-style Section Classes */
            .section {
                background: transparent;
                padding: 0;
                margin-bottom: 50px;
            }

            .section-header {
                font-size: 18px;
                font-weight: 600;
                color: #2c3e50;
                margin-bottom: 15px;
            }

            .section-list {
                margin-bottom: 20px;
                padding-left: 20px;
                font-size: 14px;
            }

            .section-list li {
                color: var(--medium-text);
                margin-bottom: 5px;
            }

            .section-content {
                background: var(--card-bg);
                border-radius: var(--radius);
                padding: 20px;
                box-shadow: var(--shadow);
                border: 1px solid #eef0f3;
                text-align: center;
                /* Ensure alignment via CSS */
            }

            .section-content img {
                max-width: 100%;
                height: auto;
                border-radius: 8px;
                box-shadow: var(--shadow);
            }

            .divider {
                width: 100%;
                border-top: 1px solid #ddd;
                margin: 40px 0;
                opacity: 0.5;
            }

            .hover-shadow:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transform: translateY(-2px);
                transition: all 0.2s;
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
                    <li><a href="${pageContext.request.contextPath}/dashboard.jsp" class="active">Main Dashboard</a>
                    </li>

                    <!-- OPD Dropdown -->
                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">OPD (Out-Patient Department) <i
                                class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="#" onclick="showPage('opd-dashboard')">OPD</a></li>
                            <li><a href="#" onclick="showPage('appointment')">Appointment Finder</a></li>
                            <li><a href="#" onclick="showPage('vaccination')">Vaccination</a></li>
                            <li><a href="#" onclick="showPage('prescription')">Prescription</a></li>
                            <li><a href="#" onclick="showPage('emr')">EMR</a></li>
                            <li><a href="#" onclick="showPage('tele-medicine')">Tele-Medicine</a></li>
                        </ul>
                    </li>

                    <!-- IPD Dropdown -->
                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">IPD (In-Patient Department) <i
                                class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="${pageContext.request.contextPath}/views/ipd_department.jsp">IPD (In-patient
                                    Department)</a></li>
                            <li><a href="${pageContext.request.contextPath}/views/operation_theatre.jsp">OT (Operation
                                    Theatre)</a></li>
                            <li><a href="${pageContext.request.contextPath}/views/casualty.jsp">Casualty</a></li>
                            <!-- New OT Link -->
                            <li><a href="${pageContext.request.contextPath}/views/visiting_consultant.jsp">Visiting
                                    Consultant</a></li>
                            <!-- EMR link -->
                            <li> <a href="${pageContext.request.contextPath}/views/emr.jsp">
                                    EMR (Electronic Media Records) </a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/views/discharge.jsp">
                                    Discharge
                                </a>
                            </li>



                        </ul>
                    </li>


                    <!-- OT Dropdown (Optional specific link too, but integrated into IPD as requested) -->
                    <!-- <li class="has-submenu"><a href="#" onclick="showPage('ot')">OT (Operation Theatre)</a></li> -->

                    <!-- Investigation Dropdown -->
                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">Investigation <i
                                class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="#" onclick="showPage('investigation')">Investigation</a></li>
                            <li><a href="#" onclick="showPage('analytics')">Analytics</a></li>
                            <li><a href="#" onclick="showPage('pacs')">PACS</a></li>
                        </ul>
                    </li>

                    <!-- Store & Pharmacy Dropdown -->
                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">Store & Pharmacy <i
                                class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="#" onclick="showPage('inventory')">Inventory</a></li>
                            <li><a href="#" onclick="showPage('pharmacy')">Pharmacy</a></li>
                            <li><a href="#" onclick="showPage('indent')">Indent</a></li>
                        </ul>
                    </li>

                    <!-- Account section -->
                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">Account <i class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="${pageContext.request.contextPath}/views/account_dashboard.jsp">Account</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/views/refund_request_dashboard.jsp">Refund
                                    Request Dashboard</a></li>
                            <li><a href="${pageContext.request.contextPath}/views/discount_request_dashboard.jsp">Discount
                                    Request Dashboard</a></li>
                            <li><a href="${pageContext.request.contextPath}/views/tpa_dashboard.jsp">TPA (Third Party
                                    Administration)</a></li>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="#" onclick="toggleSubmenu(event, this)">General <i class="fa fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="${pageContext.request.contextPath}/payroll">Payroll</a></li>
                            <li><a href="${pageContext.request.contextPath}/patient">Patient</a></li>
                            <li><a href="#">MRD</a></li>
                            <li><a href="#">Dietary</a></li>
                            <li><a href="#">NABH</a></li>
                            <li><a href="#">CRM</a></li>
                            <li><a href="#">Blood bank</a></li>
                            <li><a href="#">Housekeeping</a></li>
                            <li><a href="#">Master</a></li>
                            <li><a href="#">MIS</a></li>
                            <li><a href="#">CASUALTY</a></li> <!-- Added based on image reference in other chats -->
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/contactus">Contact us</a></li>
                    <li><a href="${pageContext.request.contextPath}/views/login.jsp">Logout</a></li>
                </ul>
            </div>

            <!-- MAIN CONTENT -->
            <div class="main">
                <!-- OPD Dashboard -->
                <div class="page" id="opd-dashboard" style="display:none;">
                    <h1 class="page-title">OPD Overview</h1>

                    <!-- 1. OPD Dashboard -->
                    <div class="section">
                        <div class="section-header">OPD Dashboard</div>
                        <ul class="section-list">
                            <li>Overview of Out-Patient Department activities.</li>
                        </ul>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/opd.png" alt="OPD Dashboard" />
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
                            <img src="${pageContext.request.contextPath}/views/images/payment.png"
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
                            <img src="${pageContext.request.contextPath}/views/images/invoice.png" alt="OPD Invoice" />
                        </div>
                    </div>
                </div>

                <!-- Appointment Finder -->
                <div class="page" id="appointment" style="display:none;">
                    <h1 class="page-title">Appointment Finder</h1>

                    <div class="section">
                        <div class="section-header">Appointment Finder Dashboard</div>
                        <ul class="section-list">
                            <li>View and search booked appointments.</li>
                        </ul>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/ap.png" alt="Appointment Finder">
                        </div>
                    </div>
                </div>

                <!-- Vaccination -->
                <div class="page" id="vaccination" style="display:none;">
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
                            <img src="${pageContext.request.contextPath}/views/images/vt.png" alt="Vaccination Table">
                        </div>
                    </div>
                </div>

                <!-- Prescription -->
                <div class="page" id="prescription" style="display:none;">
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
                            <img src="${pageContext.request.contextPath}/views/images/np.png" alt="Prescription Note" />
                        </div>
                    </div>
                </div>

                <!-- EMR (Electronic Medical Records) -->
                <div class="page" id="emr" style="display:none;">
                    <h1 class="page-title">EMR (Electronic Medical Records)</h1>

                    <!-- Dashboard -->
                    <div class="section">
                        <div class="section-header">EMR Dashboard</div>
                        <ul class="section-list">
                            <li>Electronic Medical Records overview.</li>
                        </ul>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/ed.png" alt="EMR Dashboard" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Update Notes -->
                    <div class="section">
                        <div class="section-header">Update Notes</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/ppp.png" alt="Update Notes" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Consultation Note -->
                    <div class="section">
                        <div class="section-header">Consultation Note</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/p4.png" alt="Consultation Note" />
                        </div>
                    </div>
                </div>

                <!-- Tele-Medicine -->
                <div class="page" id="tele-medicine" style="display:none;">
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
                <div class="page" id="investigation" style="display:none;">
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
                            <img src="${pageContext.request.contextPath}/views/images/an.png" alt="Add New Patient" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Update Report Investigation (Observation Values) -->
                    <div class="section">
                        <div class="section-header">Update Report Investigation (Observation Values)</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/up.png"
                                alt="Update Report Investigation" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Update Report Investigation (Description) -->
                    <div class="section">
                        <div class="section-header">Update Report Investigation (Description)</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/upi.png"
                                alt="Update Report Description" />
                        </div>
                    </div>
                </div>

                <!-- Analytics -->
                <div class="page" id="analytics" style="display:none;">
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
                <div class="page" id="pacs" style="display:none;">
                    <h1 class="page-title">PACS</h1>

                    <div class="section">
                        <div class="section-header">PACS Dashboard</div>
                        <ul class="section-list">
                            <li>Picture Archiving and Communication System.</li>
                        </ul>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/pac.png" alt="PACS Dashboard" />
                        </div>
                    </div>
                </div>

                <!-- Inventory -->
                <div class="page" id="inventory" style="display:none;">
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
                            <img src="${pageContext.request.contextPath}/views/images/po.png" alt="GRN with PO" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Good Received -->
                    <div class="section">
                        <div class="section-header">Good Received</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/gn.png" alt="Good Received" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Good Receipt Note -->
                    <div class="section">
                        <div class="section-header">Good Receipt Note</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/gr.png" alt="Good Receipt Note" />
                        </div>
                    </div>
                </div>

                <!-- Pharmacy -->
                <div class="page" id="pharmacy" style="display:none;">
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
                            <img src="${pageContext.request.contextPath}/views/images/pr.png" alt="Pharmacy Sale" />
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
                            <img src="${pageContext.request.contextPath}/views/images/pi2.png" alt="Pharmacy Invoice" />
                        </div>
                    </div>
                </div>

                <!-- Indent -->
                <div class="page" id="indent" style="display:none;">
                    <h1 class="page-title">Indent</h1>

                    <!-- Indent Dashboard -->
                    <div class="section">
                        <div class="section-header">Indent Dashboard</div>
                        <ul class="section-list">
                            <li>Manage indent requests and approvals.</li>
                        </ul>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/indent 1.png"
                                alt="Indent Dashboard" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Indent Popup -->
                    <div class="section">
                        <div class="section-header">Indent Popup</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/indent2.png" alt="Indent Popup" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Indent Approval -->
                    <div class="section">
                        <div class="section-header">Indent Approval</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/indent3.png"
                                alt="Indent Approval" />
                        </div>
                    </div>

                    <div class="divider"></div>

                    <!-- Indent Approval / Rejection Note -->
                    <div class="section">
                        <div class="section-header">Indent Approval / Rejection Note</div>
                        <div class="section-content text-center">
                            <img src="${pageContext.request.contextPath}/views/images/indent4.png"
                                alt="Indent Approval / Rejection Note" />
                        </div>
                    </div>
                </div>
            </div> <!-- End Main -->

        </div> <!-- End Wrapper -->

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            // Toggle dropdown submenu (Yuvicare Style)
            function toggleSubmenu(event, element) {
                event.preventDefault();
                const listItem = element.parentElement;
                const submenu = listItem.querySelector('.submenu');
                listItem.classList.toggle('active');
                if (submenu) {
                    submenu.classList.toggle('active');
                }
            }

            // Show Page Function (User Logic)
            function showPage(pageId) {
                // Hide all pages
                const pages = document.querySelectorAll('.page');
                pages.forEach(page => page.style.display = 'none');
                // Show selected page
                const selectedPage = document.getElementById(pageId);
                if (selectedPage) {
                    selectedPage.style.display = 'block';
                }
                // Close sidebar on mobile if needed
            }

            // Popup Functions
            function openPrescription() {
                document.getElementById("prescriptionPopup").style.display = "flex";
            }
            function closePrescription() {
                document.getElementById("prescriptionPopup").style.display = "none";
            }
        </script>

    </body>

    </html>