<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>



</style>
<body>
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
         
         
         
         <script>
document.addEventListener("DOMContentLoaded", function() {

    // Get selected page from URL
    const urlParams = new URLSearchParams(window.location.search);

    let pageId = urlParams.get("page");

    // Default page
    if (!pageId) {
        pageId = "opd-dashboard";
    }

    // Hide all pages
    document.querySelectorAll(".main .page").forEach(function(page) {
        page.style.display = "none";
    });

    // Show selected page
    const selectedPage = document.getElementById(pageId);

    if (selectedPage) {
        selectedPage.style.display = "block";
    } else {
        document.getElementById("opd-dashboard").style.display = "block";
    }

});
</script>
</body>
</html>