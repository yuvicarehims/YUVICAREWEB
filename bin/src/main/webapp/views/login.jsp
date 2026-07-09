<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login | YUVICARE HIMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* ===== PREMIUM THEME (ADDED) ===== */
        :root {
            --primary: #41bfc1;
            --primary-dark: #38a8aa;
            --secondary: #ffd700;
            --accent: #2a8c8e;

            --gradient-primary: linear-gradient(135deg, var(--primary), var(--accent));
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

        /* ===== RESET ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", sans-serif;
            background: #e6f3f5;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ===== LOGIN CONTAINER ===== */
        .login-wrapper {
            width: 1100px;
            max-width: 95%;
            height: 620px;
            background: var(--white);
            display: flex;
            border-radius: var(--border-radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-heavy);
        }

        /* ===== LEFT PANEL ===== */
        .login-info {
            flex: 1;
            background: var(--gradient-primary);
            padding: 50px;
            color: var(--white);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .login-info h2 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .login-info p {
            font-size: 15px;
            opacity: 0.95;
            line-height: 1.7;
        }

        .info-box {
            background: rgba(255, 255, 255, 0.18);
            padding: 25px;
            border-radius: var(--border-radius);
        }

        .info-box h3 {
            margin-bottom: 10px;
        }

        .illustration {
            text-align: center;
            margin-top: 30px;
        }

        .illustration img {
            max-width: 100%;
        }

        /* ===== RIGHT PANEL ===== */
        .login-form {
            flex: 1;
            padding: 60px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-form h1 {
            font-size: 36px;
            color: var(--dark-text);
            margin-bottom: 10px;
        }

        .login-form p {
            color: var(--light-text);
            margin-bottom: 35px;
        }

        /* ===== INPUTS ===== */
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group input {
            width: 100%;
            padding: 14px 45px;
            border-radius: var(--border-radius);
            border: 1px solid #ddd;
            font-size: 15px;
        }

        .form-group input:focus {
            outline: none;
            border-color: var(--primary);
        }

        .form-group i {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            color: #999;
        }

        /* ===== OPTIONS ===== */
        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .options a {
            text-decoration: none;
            color: var(--primary);
        }

        /* ===== BUTTON ===== */
        .login-btn {
            width: 100%;
            padding: 14px;
            border-radius: 30px;
            border: none;
            background: var(--gradient-dark);
            color: var(--white);
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(65, 191, 193, 0.45);
        }

        /* ===== FOOTER TEXT ===== */
        .support {
            text-align: center;
            font-size: 13px;
            margin-top: 25px;
            color: var(--light-text);
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 900px) {
            .login-wrapper {
                flex-direction: column;
                height: auto;
            }

            .login-info {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="login-wrapper">

        <!-- LEFT INFO -->
        <div class="login-info">
            <div>
                <h2>Welcome to YUVICARE</h2>
                <p>
                    Hospital Information Management System designed to streamline
                    operations, enhance patient care, and ensure efficiency.
                </p>
            </div>

            <div class="info-box">
                <h3>Why YUVICARE?</h3>
                <p>
                    ✔ OPD & IPD Management<br>
                    ✔ Billing & Pharmacy<br>
                    ✔ NABH Compliant<br>
                    ✔ 24/7 Support
                </p>
            </div>

            <div class="illustration">
                <img src="https://cdn-icons-png.flaticon.com/512/4320/4320337.png" alt="Hospital">
            </div>
        </div>

        <!-- RIGHT LOGIN -->
        <div class="login-form">
            <h1>Login</h1>
            <p>Enter your credentials to access the system</p>

            <form action="dashboard.jsp" method="post">

                <div class="form-group">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="User ID" required>
                </div>

                <div class="form-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required>
                </div>

                <div class="options">
                    <label>
                        <input type="checkbox" name="remember"> Remember Me
                    </label>
                    <a href="#">Forgot Password?</a>
                </div>

                <button type="submit" class="login-btn">Login</button>
            </form>

            <div class="support">
                Contact Support: <b>support@yuvicare.com</b>
            </div>
        </div>

    </div>

</body>

</html>