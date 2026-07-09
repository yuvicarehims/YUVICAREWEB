<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>YUVICARE | Complete Hospital Information Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="YUVICARE - Complete Hospital Information Management System for OPD, IPD, EMR, Pharmacy, Pathology, Radiology, HR, Accounts and NABH compliance.">
    
    <style>
        /* ===== Global Reset & Variables ===== */
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

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            line-height: 1.6;
            color: var(--dark-text);
            background-color: var(--light-bg);
            overflow-x: hidden;
            scroll-behavior: smooth;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        section {
            padding: 100px 0;
        }

        h1, h2, h3, h4, h5 {
            font-weight: 700;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 60px;
            position: relative;
            color: var(--dark-text);
        }

        h2::after {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: var(--primary);
            border-radius: 2px;
        }

        .section-subtitle {
            text-align: center;
            font-size: 1.125rem;
            color: var(--medium-text);
            max-width: 700px;
            margin: 0 auto 50px;
            line-height: 1.8;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 16px 36px;
            background: var(--gradient-primary);
            color: var(--white);
            border: none;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1rem;
            text-decoration: none;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: var(--shadow-light);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: var(--gradient-dark);
            transition: var(--transition);
            z-index: -1;
        }

        .btn:hover::before {
            left: 0;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-heavy);
        }

        .btn-secondary {
            background: transparent;
            border: 2px solid var(--primary);
            color: var(--primary);
        }

        .btn-secondary:hover {
            background: var(--primary);
            color: var(--white);
        }

        .btn-white {
            background: var(--white);
            color: var(--primary);
        }

        .btn-white:hover {
            background: var(--primary);
            color: var(--white);
        }

        .section-header {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-header .tag {
            display: inline-block;
            background: rgba(65, 191, 193, 0.1);
            color: var(--primary);
            padding: 8px 20px;
            border-radius: 50px;
            font-size: 0.875rem;
            font-weight: 600;
            margin-bottom: 20px;
        }

        /* ===== Header ===== */
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

        .main-nav ul li a:hover::after,
        .main-nav ul li a.active::after {
            width: 100%;
        }

        .main-nav ul li a:hover,
        .main-nav ul li a.active {
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

        /* ===== HERO SECTION WITH PAGINATED IMAGES ===== */
        .hero-section {
            position: relative;
            height: 100vh;
            min-height: 700px;
            overflow: hidden;
            background: #000;
            margin-top: 90px;
        }

        .hero-slideshow {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .hero-slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0;
            transform: scale(1.1);
            transition: opacity 1.5s cubic-bezier(0.4, 0, 0.2, 1), transform 8s linear;
            z-index: 1;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            filter: brightness(0.3);
        }

        .hero-slide.active {
            opacity: 1;
            transform: scale(1);
            z-index: 2;
        }

        .hero-slide::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(
                135deg,
                rgba(65, 191, 193, 0.3) 0%,
                rgba(65, 191, 193, 0.1) 50%,
                rgba(0, 0, 0, 0.7) 100%
            );
        }

       /* ===== HERO SLIDES (LOCAL IMAGES) ===== */

/* Slide 1 */
.slide-1 {
    background-image: url('${pageContext.request.contextPath}/views/images/hospital5.jpg');
}

/* Slide 2 */
.slide-2 {
    background-image: url('${pageContext.request.contextPath}/views/images/hospital2.jpg');
}

/* Slide 3 */
.slide-3 {
    background-image: url('${pageContext.request.contextPath}/views/images/hospital3.jpg');
}

/* Slide 4 */
.slide-4 {
    background-image: url('${pageContext.request.contextPath}/views/images/hospital4.jpg');
}
/* Slide 5 (optional – reuse image or remove slide-5 HTML) */
.slide-5 {
    background-image: url('${pageContext.request.contextPath}/views/images/hospital1.jpg');
}



        /* ===== HERO CONTENT LEFT ALIGN FIX ===== */

.hero-content {
    position: relative;
    z-index: 2;
    height: 100%;
    width: 100%;

    display: flex;
    align-items: center;          /* vertical center */
    justify-content: flex-start;  /* LEFT SIDE */
    padding-left: 80px;           /* space from left */
}

.hero-text {
    max-width: 700px;
    text-align: left;

    display: flex;
    flex-direction: column;
    justify-content: center;
}

/* text styles (optional fine tune) */
.hero-text h1 {
    font-size: 56px;
    font-weight: 700;
    color: #ffffff;
    line-height: 1.2;
    margin-bottom: 20px;
}

.hero-text p {
    font-size: 18px;
    color: #e6e6e6;
    margin-bottom: 30px;
}


        .hero-text h1 span::after {
            content: '';
            position: absolute;
            bottom: 5px;
            left: 0;
            width: 100%;
            height: 8px;
            background: rgba(65, 191, 193, 0.2);
            z-index: -1;
            border-radius: 4px;
        }

        .hero-description {
            font-size: 1.25rem;
            line-height: 1.8;
            margin-bottom: 2.5rem;
            color: rgba(255, 255, 255, 0.9);
            max-width: 600px;
        }

        .hero-buttons {
            display: flex;
            gap: 1.5rem;
            margin-bottom: 4rem;
        }

        .hero-btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 18px 36px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1rem;
            text-decoration: none;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .btn-primary {
            background: linear-gradient(135deg, #41bfc1, #2a8c8e);
            color: white;
            box-shadow: 0 8px 30px rgba(65, 191, 193, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(65, 191, 193, 0.4);
        }

        .btn-secondary {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: white;
            backdrop-filter: blur(10px);
        }

        .btn-secondary:hover {
            border-color: #41bfc1;
            background: rgba(65, 191, 193, 0.1);
            transform: translateY(-3px);
        }

        .hero-stats {
    display: flex;
    gap: 3rem;
    flex-wrap: wrap;
    padding-top: 3rem;
    border-top: none;
}


        .stat-item {
            text-align: center;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            color: #41bfc1;
            margin-bottom: 0.5rem;
            line-height: 1;
            display: block;
            text-shadow: 0 2px 10px rgba(65, 191, 193, 0.3);
        }

        .stat-label {
            font-size: 0.875rem;
            color: rgba(255, 255, 255, 0.7);
            text-transform: uppercase;
            letter-spacing: 1.5px;
            font-weight: 600;
        }

        /* Pagination Dots */
        .slide-pagination {
            position: absolute;
            bottom: 40px;
            left: 0;
            width: 100%;
            z-index: 4;
            display: flex;
            justify-content: center;
            gap: 12px;
        }

        .slide-dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            cursor: pointer;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .slide-dot:hover {
            background: rgba(255, 255, 255, 0.4);
            transform: scale(1.2);
        }

        .slide-dot.active {
            background: #41bfc1;
            transform: scale(1.2);
            box-shadow: 0 0 20px rgba(65, 191, 193, 0.5);
        }

        /* Navigation Arrows */
        .slide-nav {
            position: absolute;
            top: 50%;
            width: 100%;
            z-index: 4;
            display: flex;
            justify-content: space-between;
            padding: 0 30px;
            transform: translateY(-50%);
            pointer-events: none;
        }

        .nav-arrow {
            pointer-events: all;
            width: 60px;
            height: 60px;
            background: rgba(0, 0, 0, 0.5);
            border: 2px solid rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
        }

        .nav-arrow:hover {
            background: rgba(65, 191, 193, 0.8);
            border-color: #41bfc1;
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(65, 191, 193, 0.3);
        }

        /* Search Bar */
        .hero-search {
            position: absolute;
            top: 30px;
            right: 30px;
            z-index: 4;
            width: 300px;
        }

        .search-box {
            display: flex;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-radius: 50px;
            padding: 10px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
        }

        .search-box:focus-within {
            background: rgba(255, 255, 255, 0.15);
            border-color: rgba(65, 191, 193, 0.5);
            box-shadow: 0 0 30px rgba(65, 191, 193, 0.2);
        }

        .search-box input {
            flex: 1;
            background: transparent;
            border: none;
            padding: 10px 20px;
            color: white;
            font-size: 0.95rem;
            outline: none;
        }

        .search-box input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }

        .search-box button {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: linear-gradient(135deg, #41bfc1, #2a8c8e);
            border: none;
            color: white;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-box button:hover {
            transform: rotate(90deg) scale(1.1);
            box-shadow: 0 0 20px rgba(65, 191, 193, 0.5);
        }

        /* ===== Features Section ===== */
        .features {
            position: relative;
            overflow: hidden;
        }

        .features-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                linear-gradient(rgba(255, 255, 255, 0.93), rgba(255, 255, 255, 0.97)),
                url('https://images.unsplash.com/photo-1580281657527-47a6e6c0b3b6?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            z-index: -1;
        }

        .feature-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .feature-card {
            background: var(--card-bg);
            border-radius: var(--border-radius);
            padding: 40px 30px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(65, 191, 193, 0.1);
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: var(--transition);
        }

        .feature-card:hover::before {
            transform: scaleX(1);
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-heavy);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            background: rgba(65, 191, 193, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 25px;
            font-size: 32px;
            color: var(--primary);
            transition: var(--transition);
        }

        .feature-card:hover .feature-icon {
            background: var(--gradient-primary);
            color: var(--white);
            transform: scale(1.1) rotate(5deg);
        }

        .feature-card h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
        }

        .feature-card p {
            color: var(--light-text);
            margin-bottom: 20px;
            line-height: 1.7;
        }

        .feature-link {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .feature-link:hover {
            color: var(--accent);
            gap: 12px;
        }

        /* ===== Modules Section ===== */
        .modules {
            background: var(--light-bg);
            position: relative;
            overflow: hidden;
        }

        .modules-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                linear-gradient(rgba(248, 252, 252, 0.9), rgba(248, 252, 252, 0.95)),
                url('https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            z-index: -1;
        }

        .module-tabs {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 50px;
            flex-wrap: wrap;
        }

        .module-tab {
            padding: 14px 28px;
            background: var(--white);
            border: 2px solid rgba(65, 191, 193, 0.2);
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            color: var(--medium-text);
        }

        .module-tab:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        .module-tab.active {
            background: var(--gradient-primary);
            color: var(--white);
            border-color: transparent;
            transform: translateY(-2px);
            box-shadow: var(--shadow);
        }

        .module-content {
            display: none;
            animation: fadeIn 0.5s ease;
        }

        .module-content.active {
            display: block;
        }

        .module-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 25px;
        }

        .module-item {
            background: var(--white);
            padding: 30px;
            border-radius: var(--border-radius);
            box-shadow: var(--shadow-light);
            display: flex;
            align-items: center;
            gap: 20px;
            transition: var(--transition);
            border-left: 4px solid transparent;
        }

        .module-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
            border-left-color: var(--primary);
        }

        .module-icon {
            width: 60px;
            height: 60px;
            background: rgba(65, 191, 193, 0.1);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 24px;
            flex-shrink: 0;
            transition: var(--transition);
        }

        .module-item:hover .module-icon {
            background: var(--gradient-primary);
            color: var(--white);
            transform: rotate(10deg);
        }

        .module-info h4 {
            font-size: 1.125rem;
            margin-bottom: 8px;
        }

        .module-info p {
            color: var(--light-text);
            font-size: 0.875rem;
            line-height: 1.6;
        }

        /* ===== Technology Section ===== */
        .technology {
            position: relative;
            overflow: hidden;
        }

        .tech-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                linear-gradient(rgba(255, 255, 255, 0.92), rgba(255, 255, 255, 0.96)),
                url('https://images.unsplash.com/photo-1559757148-5c350d0d3c56?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            z-index: -1;
        }

        .tech-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .tech-card {
            text-align: center;
            padding: 40px 20px;
            background: var(--card-bg);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow-light);
            transition: var(--transition);
            border: 1px solid rgba(65, 191, 193, 0.1);
        }

        .tech-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .tech-icon {
            font-size: 48px;
            color: var(--primary);
            margin-bottom: 20px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ===== Process Section ===== */
        .process {
            background: var(--light-bg);
            position: relative;
            overflow: hidden;
        }

        .process-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                linear-gradient(rgba(248, 252, 252, 0.9), rgba(248, 252, 252, 0.95)),
                url('https://images.unsplash.com/photo-1576091160399-112ba8d25d1f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            z-index: -1;
        }

        .process-steps {
            display: flex;
            flex-direction: column;
            gap: 40px;
            max-width: 800px;
            margin: 0 auto;
        }

        .process-step {
            display: flex;
            align-items: center;
            gap: 30px;
            padding: 30px;
            background: var(--white);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow-light);
            transition: var(--transition);
        }

        .process-step:hover {
            transform: translateX(10px);
            box-shadow: var(--shadow);
        }

        .step-number {
            width: 60px;
            height: 60px;
            background: var(--gradient-primary);
            color: var(--white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 700;
            flex-shrink: 0;
        }

        /* ===== Testimonials Section ===== */
        .testimonials {
            background: linear-gradient(135deg, #f8fcfc 0%, #eef9fa 100%);
            position: relative;
            overflow: hidden;
        }

        .testimonials::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 20% 80%, rgba(65, 191, 193, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, rgba(255, 215, 0, 0.05) 0%, transparent 50%);
        }

        .testimonials-header {
            text-align: center;
            margin-bottom: 80px;
            position: relative;
            padding: 40px 20px;
        }

        .trusted-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: var(--white);
            padding: 12px 28px;
            border-radius: 50px;
            font-size: 0.875rem;
            font-weight: 600;
            margin-bottom: 30px;
            box-shadow: 0 4px 15px rgba(65, 191, 193, 0.3);
            position: relative;
            overflow: hidden;
        }

        .trusted-badge::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: var(--transition);
        }

        .trusted-badge:hover::before {
            left: 100%;
        }

        .trusted-badge i {
            color: var(--secondary);
            font-size: 1.2rem;
        }

        .testimonials-header h2 {
            font-size: 3.2rem;
            margin-bottom: 30px;
            position: relative;
            display: inline-block;
            background: linear-gradient(135deg, var(--dark-text), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .testimonials-header h2::before {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(to right, var(--primary), var(--secondary), var(--primary));
            border-radius: 2px;
        }

        .section-tagline {
            font-size: 1.25rem;
            color: var(--medium-text);
            max-width: 600px;
            margin: 0 auto;
            font-weight: 500;
            line-height: 1.8;
            padding: 20px;
            position: relative;
        }

        .section-tagline::before,
        .section-tagline::after {
            content: '✦';
            position: absolute;
            color: var(--primary);
            font-size: 1.5rem;
        }

        .section-tagline::before {
            left: 0;
            top: 0;
        }

        .section-tagline::after {
            right: 0;
            bottom: 0;
        }

        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-bottom: 80px;
        }

        @media (max-width: 992px) {
            .testimonials-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .testimonials-grid {
                grid-template-columns: 1fr;
            }
        }

        .testimonial-card {
            background: var(--white);
            border-radius: var(--border-radius-lg);
            padding: 40px;
            position: relative;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(65, 191, 193, 0.1);
            height: 100%;
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }

        .testimonial-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 100%;
            background: linear-gradient(to bottom, var(--primary), var(--secondary));
            transition: var(--transition);
        }

        .testimonial-card:hover::before {
            width: 8px;
        }

        .testimonial-card::after {
            content: '"';
            position: absolute;
            top: 20px;
            right: 30px;
            font-size: 100px;
            color: var(--primary);
            opacity: 0.1;
            font-family: serif;
            line-height: 1;
            transition: var(--transition);
        }

        .testimonial-card:hover::after {
            opacity: 0.2;
            transform: scale(1.1);
        }

        .testimonial-card:hover {
            transform: translateY(-15px);
            box-shadow: var(--shadow-heavy);
            border-color: var(--primary);
        }

        .testimonial-rating {
            display: flex;
            gap: 5px;
            margin-bottom: 25px;
        }

        .testimonial-rating i {
            color: var(--secondary);
            font-size: 1.2rem;
            text-shadow: 0 2px 5px rgba(255, 215, 0, 0.3);
        }

        .testimonial-text {
            font-size: 1.125rem;
            line-height: 1.8;
            color: var(--medium-text);
            margin-bottom: 30px;
            flex-grow: 1;
            font-style: italic;
            position: relative;
            z-index: 1;
            padding-right: 20px;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 20px;
            padding-top: 25px;
            border-top: 1px solid rgba(65, 191, 193, 0.1);
        }

        .author-avatar {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--white);
            font-size: 1.5rem;
            font-weight: 600;
            flex-shrink: 0;
            border: 3px solid var(--white);
            box-shadow: 0 5px 15px rgba(65, 191, 193, 0.2);
            transition: var(--transition);
        }

        .testimonial-card:hover .author-avatar {
            transform: scale(1.1);
            box-shadow: 0 8px 20px rgba(65, 191, 193, 0.3);
        }

        .author-info {
            flex-grow: 1;
        }

        .author-info h4 {
            font-size: 1.25rem;
            margin-bottom: 5px;
            color: var(--dark-text);
            font-weight: 600;
        }

        .author-title {
            color: var(--primary);
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .author-title::before {
            content: '';
            width: 10px;
            height: 2px;
            background: var(--primary);
            display: inline-block;
        }

        .author-hospital {
            color: var(--light-text);
            font-size: 0.875rem;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .author-hospital i {
            color: var(--primary);
            font-size: 0.75rem;
        }

        .impressive-stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin: 80px auto;
            max-width: 1000px;
        }

        @media (max-width: 768px) {
            .impressive-stats {
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
        }

        @media (max-width: 480px) {
            .impressive-stats {
                grid-template-columns: 1fr;
            }
        }

        .stat-card {
            background: linear-gradient(135deg, var(--white), #f8fcfc);
            border-radius: var(--border-radius);
            padding: 40px 20px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(65, 191, 193, 0.1);
            position: relative;
            overflow: hidden;
        }

        .stat-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(to right, var(--primary), var(--secondary));
            transform: scaleX(0);
            transition: var(--transition);
            transform-origin: left;
        }

        .stat-card:hover::before {
            transform: scaleX(1);
        }

        .stat-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-heavy);
        }

        .stat-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 20px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }

        .stat-card:hover .stat-icon {
            transform: scale(1.2) rotate(5deg);
            color: var(--accent);
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            line-height: 1;
        }

        .stat-label {
            color: var(--medium-text);
            font-size: 1rem;
            font-weight: 500;
        }

        .featured-hospitals {
            background: var(--white);
            padding: 60px;
            border-radius: var(--border-radius-lg);
            box-shadow: var(--shadow);
            margin-top: 80px;
            position: relative;
            overflow: hidden;
        }

        .featured-hospitals::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(to right, var(--primary), var(--secondary), var(--primary));
        }

        .hospitals-header {
            text-align: center;
            margin-bottom: 50px;
        }

        .hospitals-header h3 {
            font-size: 2rem;
            color: var(--dark-text);
            margin-bottom: 15px;
            position: relative;
            display: inline-block;
        }

        .hospitals-header h3::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background: var(--primary);
        }

        .hospitals-header p {
            color: var(--medium-text);
            font-size: 1.125rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .hospital-logos {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 40px;
            padding: 20px;
        }

        .hospital-logo {
            width: 160px;
            height: 80px;
            background: var(--white);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 15px;
            border: 2px solid rgba(65, 191, 193, 0.1);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }

        .hospital-logo::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(65, 191, 193, 0.1), rgba(255, 215, 0, 0.05));
            opacity: 0;
            transition: var(--transition);
        }

        .hospital-logo:hover::before {
            opacity: 1;
        }

        .hospital-logo:hover {
            transform: translateY(-8px) scale(1.05);
            border-color: var(--primary);
            box-shadow: var(--shadow);
        }

        .hospital-name {
            font-size: 1.3rem;
            font-weight: 700;
            background: linear-gradient(135deg, var(--dark-text), var(--primary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            transition: var(--transition);
        }

        .hospital-logo:hover .hospital-name {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .featured-ceo-testimonial {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: var(--white);
            border-radius: var(--border-radius-lg);
            padding: 60px;
            margin-top: 80px;
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .featured-ceo-testimonial::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23ffffff' fill-opacity='0.1' fill-rule='evenodd'/%3E%3C/svg%3E");
            opacity: 0.3;
        }

        .ceo-content {
            position: relative;
            z-index: 1;
            max-width: 800px;
            margin: 0 auto;
        }

        .ceo-quote {
            font-size: 1.5rem;
            line-height: 1.8;
            margin-bottom: 40px;
            font-weight: 500;
            position: relative;
            padding: 0 40px;
        }

        .ceo-quote::before,
        .ceo-quote::after {
            content: '"';
            position: absolute;
            font-size: 80px;
            color: rgba(255, 255, 255, 0.3);
            font-family: serif;
            line-height: 1;
        }

        .ceo-quote::before {
            top: -20px;
            left: 0;
        }

        .ceo-quote::after {
            bottom: -60px;
            right: 0;
        }

        .ceo-info {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            margin-top: 40px;
        }

        .ceo-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background: var(--white);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 2rem;
            font-weight: 700;
            border: 3px solid var(--secondary);
        }

        .ceo-details h4 {
            color: var(--white);
            margin-bottom: 5px;
            font-size: 1.5rem;
        }

        .ceo-details p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 1rem;
        }

        /* ===== CTA Section ===== */
        .cta-section {
            background: var(--gradient-primary);
            color: var(--white);
            text-align: center;
            padding: 100px 0;
            position: relative;
            overflow: hidden;
        }

        .cta-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23ffffff' fill-opacity='0.1' fill-rule='evenodd'/%3E%3C/svg%3E");
            opacity: 0.3;
        }

        .cta-section h2 {
            color: var(--white);
            position: relative;
        }

        .cta-section h2::after {
            background: var(--secondary);
        }

        .cta-section p {
            max-width: 700px;
            margin: 0 auto 40px;
            font-size: 1.125rem;
            opacity: 0.9;
            line-height: 1.8;
            position: relative;
        }

        .cta-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
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

        .newsletter {
            margin-top: 20px;
        }

        .newsletter input {
            width: 100%;
            padding: 12px 20px;
            border: none;
            border-radius: 50px;
            background: rgba(255, 255, 255, 0.1);
            color: var(--white);
            margin-bottom: 10px;
        }

        .newsletter input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }

        .newsletter .btn {
            width: 100%;
            padding: 12px;
        }

        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid #333;
            color: #888;
            font-size: 0.875rem;
        }

        /* ===== Scroll to Top ===== */
        .scroll-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            width: 50px;
            height: 50px;
            background: var(--gradient-primary);
            color: var(--white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition);
            opacity: 0;
            visibility: hidden;
            z-index: 999;
            box-shadow: var(--shadow);
        }

        .scroll-top.show {
            opacity: 1;
            visibility: visible;
        }

        .scroll-top:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-heavy);
        }

        /* ===== Animations ===== */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
        }

        .animate-fade-in-up {
            animation: fadeInUp 0.6s ease-out;
        }

        .animate-delay-1 {
            animation-delay: 0.2s;
            animation-fill-mode: both;
        }

        .animate-delay-2 {
            animation-delay: 0.4s;
            animation-fill-mode: both;
        }

        .pulse-animation {
            animation: pulse 2s infinite;
        }

        /* ===== Responsive ===== */
        @media (max-width: 1200px) {
            h2 {
                font-size: 2.25rem;
            }
            
            .testimonials-header h2 {
                font-size: 2.8rem;
            }
        }

        @media (max-width: 992px) {
            .hero-text h1 {
                font-size: 3rem;
            }
            
            .feature-cards {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .process-step {
                flex-direction: column;
                text-align: center;
            }
            
            .testimonials-header h2 {
                font-size: 2.5rem;
            }
            
            .hospital-logos {
                gap: 30px;
            }
            
            .hospital-logo {
                width: 140px;
                height: 70px;
            }
            
            .featured-ceo-testimonial {
                padding: 40px 30px;
            }
            
            .ceo-quote {
                font-size: 1.25rem;
                padding: 0 20px;
            }
            
            .slide-nav {
                padding: 0 20px;
            }
            
            .nav-arrow {
                width: 50px;
                height: 50px;
            }
        }

        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            
            .main-nav {
                position: fixed;
                top: 90px;
                left: 0;
                width: 100%;
                background: var(--white);
                padding: 20px;
                box-shadow: var(--shadow-heavy);
                transform: translateY(-100%);
                opacity: 0;
                visibility: hidden;
                transition: var(--transition);
                border-radius: 0 0 var(--border-radius) var(--border-radius);
            }
            
            .main-nav.active {
                transform: translateY(0);
                opacity: 1;
                visibility: visible;
            }
            
            .main-nav ul {
                flex-direction: column;
                gap: 0;
            }
            
            .main-nav ul li {
                width: 100%;
            }
            
            .main-nav ul li a {
                padding: 15px;
                border-bottom: 1px solid rgba(65, 191, 193, 0.1);
                justify-content: center;
            }
            
            .main-nav ul li a::after {
                display: none;
            }
            
            .hero-section {
                min-height: 600px;
            }
            
            .hero-text h1 {
                font-size: 2.25rem;
            }
            
            .hero-description {
                font-size: 1.125rem;
            }
            
            .hero-stats {
                justify-content: center;
            }
            
            .feature-cards,
            .module-grid,
            .tech-grid {
                grid-template-columns: 1fr;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            section {
                padding: 80px 0;
            }
            
            .testimonials-header h2 {
                font-size: 2.2rem;
            }
            
            .section-tagline {
                font-size: 1.125rem;
                padding: 20px 40px;
            }
            
            .impressive-stats {
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
            
            .stat-number {
                font-size: 2.5rem;
            }
            
            .hospital-logos {
                gap: 20px;
            }
            
            .hospital-logo {
                width: 120px;
                height: 60px;
            }
            
            .featured-hospitals {
                padding: 40px 20px;
            }
            
            .nav-arrow {
                display: none;
            }
            
            .hero-search {
                position: relative;
                top: auto;
                right: auto;
                width: 100%;
                margin-top: 2rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                align-items: flex-start;
            }
        }

        @media (max-width: 576px) {
            .hero-text h1 {
                font-size: 2rem;
            }
            
            .hero-description {
                font-size: 1rem;
            }
            
            .hero-stats {
                flex-direction: column;
                gap: 1.5rem;
            }
            
            .hero-btn {
                padding: 15px 30px;
                font-size: 0.9rem;
            }
            
            .module-tabs {
                flex-direction: column;
                align-items: center;
            }
            
            .module-tab {
                width: 100%;
                text-align: center;
            }
            
            .testimonials-header h2 {
                font-size: 1.8rem;
            }
            
            .trusted-badge {
                padding: 10px 20px;
                font-size: 0.75rem;
            }
            
            .testimonial-card {
                padding: 25px;
            }
            
            .testimonial-text {
                font-size: 1rem;
            }
            
            .impressive-stats {
                grid-template-columns: 1fr;
            }
            
            .stat-number {
                font-size: 2.5rem;
            }
            
            .hospital-logo {
                width: 100px;
                height: 50px;
            }
            
            .hospital-name {
                font-size: 1rem;
            }
        }
    </style>
</head>

<body>
    <!-- ===== Main Header ===== -->
    <header class="main-header" id="mainHeader">
        <div class="container header-container">
            <a href="#home" class="main-logo">
                <div class="main-logo-img">
                    <i class="fas fa-hospital"></i>
                </div>
                <div class="main-logo-text">
                    <h3>YUVICARE</h3>
                    <p>Complete HIMS Solution</p>
                </div>
            </a>
            
            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fas fa-bars"></i>
            </button>
            
            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/home" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/product"><i class="fas fa-th-large"></i> About Product</a></li>
                    <li><a href="${pageContext.request.contextPath}/aboutus"><i class="fas fa-cogs"></i> About us</a></li>
                    <li><a href="${pageContext.request.contextPath}/contactus"><i class="fas fa-users"></i> Contact Us</a></li>
                    
                </ul>
            </nav>
        </div>
    </header>

    <!-- ===== Hero Section with Paginated Images ===== -->
    <section class="hero-section" id="home">
        <!-- Search Bar -->
        <div class="hero-search">
            <div class="search-box">
                <input type="text" placeholder="Search features, modules, help...">
                <button><i class="fas fa-search"></i></button>
            </div>
        </div>

        <!-- Slideshow Images -->
        <div class="hero-slideshow">
            <div class="hero-slide slide-1 active"></div>
            <div class="hero-slide slide-2"></div>
            <div class="hero-slide slide-3"></div>
            <div class="hero-slide slide-4"></div>
            <div class="hero-slide slide-5"></div>
        </div>

        <!-- Navigation Arrows -->
        <div class="slide-nav">
            <button class="nav-arrow prev-arrow">
                <i class="fas fa-chevron-left"></i>
            </button>
            <button class="nav-arrow next-arrow">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>

        <!-- Content -->
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Complete Hospital <span>Information Management</span> System</h1>
                    
                    <p class="hero-description">
                        YUVICARE is a comprehensive HIMS solution that integrates all hospital operations - 
                        from patient registration to billing, pharmacy to lab, and everything in between. 
                        Streamline your healthcare delivery with our state-of-the-art platform.
                    </p>
                    
                    <div class="hero-buttons">
                        <a href="#contact" class="hero-btn btn-primary pulse-animation">
                            <i class="fas fa-play-circle"></i>
                            Request Free Demo
                        </a>
                        <a href="#features" class="hero-btn btn-secondary">
                            <i class="fas fa-search"></i>
                            Explore Features
                        </a>
                    </div>
                    
                    <div class="hero-stats">
                        <div class="stat-item">
                            <span class="stat-number">500+</span>
                            <span class="stat-label">Hospitals</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number">40+</span>
                            <span class="stat-label">Modules</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number">99.9%</span>
                            <span class="stat-label">Uptime</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number">24/7</span>
                            <span class="stat-label">Support</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pagination Dots -->
        <div class="slide-pagination">
            <div class="slide-dot active" data-slide="0"></div>
            <div class="slide-dot" data-slide="1"></div>
            <div class="slide-dot" data-slide="2"></div>
            <div class="slide-dot" data-slide="3"></div>
            <div class="slide-dot" data-slide="4"></div>
        </div>
    </section>

    <!-- ===== Features Section ===== -->
    <section class="features" id="features">
        <div class="features-bg"></div>
        <div class="container">
            <div class="section-header">
                <span class="tag">Why Choose YUVICARE</span>
                <h2>Enterprise-Grade Hospital Management</h2>
                <p class="section-subtitle">Our platform is designed to handle the complexity of modern healthcare institutions while maintaining simplicity of use.</p>
            </div>
            
            <div class="feature-cards">
                <div class="feature-card animate-fade-in-up">
                    <div class="feature-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>NABH Compliant</h3>
                    <p>Built-in workflows and documentation tools to help you achieve and maintain NABH accreditation with ease.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
                
                <div class="feature-card animate-fade-in-up animate-delay-1">
                    <div class="feature-icon">
                        <i class="fas fa-brain"></i>
                    </div>
                    <h3>AI-Powered Analytics</h3>
                    <p>Predictive analytics and intelligent insights to optimize bed utilization, staff allocation, and resource planning.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
                
                <div class="feature-card animate-fade-in-up animate-delay-2">
                    <div class="feature-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Mobile First Design</h3>
                    <p>Access patient records, manage schedules, and monitor operations from any device, anywhere with our responsive design.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
                
                <div class="feature-card animate-fade-in-up">
                    <div class="feature-icon">
                        <i class="fas fa-bolt"></i>
                    </div>
                    <h3>Seamless Integration</h3>
                    <p>All modules work together seamlessly, eliminating data silos and ensuring smooth information flow across departments.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
                
                <div class="feature-card animate-fade-in-up animate-delay-1">
                    <div class="feature-icon">
                        <i class="fas fa-cloud"></i>
                    </div>
                    <h3>Cloud & On-Premise</h3>
                    <p>Flexible deployment options - secure cloud hosting or on-premise installation based on your hospital's needs.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
                
                <div class="feature-card animate-fade-in-up animate-delay-2">
                    <div class="feature-icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <h3>Military-Grade Security</h3>
                    <p>HIPAA compliant with end-to-end encryption, audit trails, and role-based access control to protect sensitive data.</p>
                    <a href="#" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== Modules Section ===== -->
    <section class="modules" id="modules">
        <div class="modules-bg"></div>
        <div class="container">
            <div class="section-header">
                <span class="tag">Complete Solution</span>
                <h2>40+ Integrated Modules</h2>
                <p class="section-subtitle">Comprehensive coverage of all hospital departments and functions in one unified platform.</p>
            </div>
            
            <div class="module-tabs">
                <div class="module-tab active" data-tab="clinical">Clinical Management</div>
                <div class="module-tab" data-tab="administrative">Administrative</div>
                <div class="module-tab" data-tab="financial">Financial & Billing</div>
                <div class="module-tab" data-tab="ancillary">Ancillary Services</div>
            </div>
            
            <div id="clinical" class="module-content active">
                <div class="module-grid">
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-user-md"></i>
                        </div>
                        <div class="module-info">
                            <h4>OPD Management</h4>
                            <p>Appointment scheduling, patient registration, queue management, and doctor consultation</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-procedures"></i>
                        </div>
                        <div class="module-info">
                            <h4>IPD Management</h4>
                            <p>Bed management, admission, discharge, transfer workflows, and inpatient care</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-file-medical-alt"></i>
                        </div>
                        <div class="module-info">
                            <h4>Electronic Medical Records</h4>
                            <p>Complete patient history, digital records, clinical documentation, and e-prescription</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-video"></i>
                        </div>
                        <div class="module-info">
                            <h4>Tele-Consultation</h4>
                            <p>Virtual appointments, remote monitoring, video consultations, and digital prescriptions</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-user-nurse"></i>
                        </div>
                        <div class="module-info">
                            <h4>Nursing Module</h4>
                            <p>Nursing care plans, medication administration, vital tracking, and shift management</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-prescription"></i>
                        </div>
                        <div class="module-info">
                            <h4>e-Prescription</h4>
                            <p>Digital prescriptions, drug interaction alerts, pharmacy integration, and refill management</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="administrative" class="module-content">
                <div class="module-grid">
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-users-cog"></i>
                        </div>
                        <div class="module-info">
                            <h4>HR & Payroll</h4>
                            <p>Staff management, attendance, payroll, performance tracking, and training records</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-warehouse"></i>
                        </div>
                        <div class="module-info">
                            <h4>Inventory Management</h4>
                            <p>Stock control, purchase orders, suppliers, expiry tracking, and consumption analysis</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-ambulance"></i>
                        </div>
                        <div class="module-info">
                            <h4>Asset Management</h4>
                            <p>Medical equipment tracking, maintenance schedules, calibration records, and depreciation</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-tasks"></i>
                        </div>
                        <div class="module-info">
                            <h4>Quality Management</h4>
                            <p>NABH compliance, audits, quality indicators, incident reporting, and corrective actions</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="financial" class="module-content">
                <div class="module-grid">
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-money-bill-wave"></i>
                        </div>
                        <div class="module-info">
                            <h4>Billing & Invoicing</h4>
                            <p>Patient billing, insurance claims, TPA integration, package management, and discounts</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-chart-pie"></i>
                        </div>
                        <div class="module-info">
                            <h4>Financial Accounting</h4>
                            <p>General ledger, accounts payable/receivable, financial reporting, and budget management</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-file-invoice-dollar"></i>
                        </div>
                        <div class="module-info">
                            <h4>Cost Analysis</h4>
                            <p>Departmental costing, profitability analysis, revenue cycle management, and KPI tracking</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="ancillary" class="module-content">
                <div class="module-grid">
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-pills"></i>
                        </div>
                        <div class="module-info">
                            <h4>Pharmacy</h4>
                            <p>Inventory management, dispensing, billing, drug interaction alerts, and prescription tracking</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-flask"></i>
                        </div>
                        <div class="module-info">
                            <h4>Laboratory</h4>
                            <p>LIS integration, test management, results reporting, QC, and sample tracking</p>
                        </div>
                    </div>
                    <div class="module-item">
                        <div class="module-icon">
                            <i class="fas fa-x-ray"></i>
                        </div>
                        <div class="module-info">
                            <h4>Radiology</h4>
                            <p>RIS/PACS integration, image management, reporting, and diagnostic workflow</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== Technology Section ===== -->
    <section class="technology" id="technology">
        <div class="tech-bg"></div>
        <div class="container">
            <div class="section-header">
                <span class="tag">Technology Stack</span>
                <h2>Built on Modern Technology</h2>
                <p class="section-subtitle">Our platform leverages cutting-edge technologies to deliver performance, security, and scalability.</p>
            </div>
            
            <div class="tech-grid">
                <div class="tech-card animate-fade-in-up">
                    <div class="tech-icon">
                        <i class="fas fa-cloud"></i>
                    </div>
                    <h3>Cloud Architecture</h3>
                    <p>AWS & Azure powered cloud infrastructure with auto-scaling and 99.9% uptime SLA</p>
                </div>
                
                <div class="tech-card animate-fade-in-up animate-delay-1">
                    <div class="tech-icon">
                        <i class="fas fa-database"></i>
                    </div>
                    <h3>Advanced Database</h3>
                    <p>PostgreSQL with Redis caching for high performance and data integrity</p>
                </div>
                
                <div class="tech-card animate-fade-in-up animate-delay-2">
                    <div class="tech-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>Bank-Level Security</h3>
                    <p>End-to-end encryption, HIPAA compliance, and regular security audits</p>
                </div>
                
                <div class="tech-card animate-fade-in-up">
                    <div class="tech-icon">
                        <i class="fas fa-robot"></i>
                    </div>
                    <h3>AI & ML Integration</h3>
                    <p>Predictive analytics for bed management, patient flow, and resource optimization</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== Process Section ===== -->
    <section class="process" id="process">
        <div class="process-bg"></div>
        <div class="container">
            <div class="section-header">
                <span class="tag">Implementation</span>
                <h2>Seamless Implementation Process</h2>
                <p class="section-subtitle">Our structured implementation approach ensures smooth transition and minimal disruption to your hospital operations.</p>
            </div>
            
            <div class="process-steps">
                <div class="process-step animate-fade-in-up">
                    <div class="step-number">1</div>
                    <div>
                        <h3>Needs Assessment</h3>
                        <p>Comprehensive analysis of your hospital's workflow, requirements, and customization needs</p>
                    </div>
                </div>
                
                <div class="process-step animate-fade-in-up animate-delay-1">
                    <div class="step-number">2</div>
                    <div>
                        <h3>Customization</h3>
                        <p>Tailoring the system to match your hospital's specific processes, workflows, and branding</p>
                    </div>
                </div>
                
                <div class="process-step animate-fade-in-up animate-delay-2">
                    <div class="step-number">3</div>
                    <div>
                        <h3>Training & Onboarding</h3>
                        <p>Comprehensive training for all staff members, departments, and administrators</p>
                    </div>
                </div>
                
                <div class="process-step animate-fade-in-up">
                    <div class="step-number">4</div>
                    <div>
                        <h3>Go-Live Support</h3>
                        <p>24/7 support during implementation and dedicated assistance for post-deployment</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== Testimonials Section ===== -->
    <section class="testimonials" id="testimonials">
        <div class="container">
            <div class="testimonials-header animate-fade-in-up">
                <div class="trusted-badge pulse-animation">
                    <i class="fas fa-award"></i>
                    TRUSTED BY HEALTHCARE LEADERS NATIONWIDE
                </div>
                
                <h2>Trusted by Healthcare Leaders</h2>
                
                <p class="section-tagline">
                    Join 500+ premier hospitals and healthcare institutions across India that have revolutionized their operations with YUVICARE's intelligent hospital management platform.
                </p>
            </div>

            <div class="testimonials-grid">
                <div class="testimonial-card animate-fade-in-up">
                    <div class="testimonial-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    
                    <p class="testimonial-text">
                        "YUVICARE transformed our hospital's efficiency by 60%. The seamless integration between departments and real-time analytics dashboard gave us unprecedented control over operations and patient care."
                    </p>
                    
                    <div class="testimonial-author">
                        <div class="author-avatar">DR</div>
                        <div class="author-info">
                            <h4>Dr. Rajesh Verma</h4>
                            <div class="author-title">Medical Director</div>
                            <div class="author-hospital">
                                <i class="fas fa-hospital"></i> City General Hospital, Delhi
                            </div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-card animate-fade-in-up animate-delay-1">
                    <div class="testimonial-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    
                    <p class="testimonial-text">
                        "The NABH compliance module alone saved us 200+ hours of manual work. Our accreditation process was smoother than ever, and patient satisfaction scores improved by 45% within 6 months."
                    </p>
                    
                    <div class="testimonial-author">
                        <div class="author-avatar">AS</div>
                        <div class="author-info">
                            <h4>Anita Sharma</h4>
                            <div class="author-title">Hospital Administrator</div>
                            <div class="author-hospital">
                                <i class="fas fa-clinic-medical"></i> Sunshine Medical Center, Mumbai
                            </div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-card animate-fade-in-up animate-delay-2">
                    <div class="testimonial-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    
                    <p class="testimonial-text">
                        "As a multi-specialty hospital, we needed a system that could handle complexity. YUVICARE delivered beyond expectations. Their 24/7 support team is exceptional."
                    </p>
                    
                    <div class="testimonial-author">
                        <div class="author-avatar">PK</div>
                        <div class="author-info">
                            <h4>Prof. Kumar</h4>
                            <div class="author-title">CEO & Chief Surgeon</div>
                            <div class="author-hospital">
                                <i class="fas fa-heartbeat"></i> Metro Heart Institute, Bangalore
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="impressive-stats">
                <div class="stat-card animate-fade-in-up">
                    <div class="stat-icon">
                        <i class="fas fa-hospital"></i>
                    </div>
                    <div class="stat-number" data-target="500">0+</div>
                    <div class="stat-label">Hospitals Trust Us</div>
                </div>
                
                <div class="stat-card animate-fade-in-up animate-delay-1">
                    <div class="stat-icon">
                        <i class="fas fa-user-md"></i>
                    </div>
                    <div class="stat-number" data-target="99.8">0%</div>
                    <div class="stat-label">Client Satisfaction</div>
                </div>
                
                <div class="stat-card animate-fade-in-up animate-delay-2">
                    <div class="stat-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="stat-number" data-target="60">0%</div>
                    <div class="stat-label">Avg. Efficiency Gain</div>
                </div>
                
                <div class="stat-card animate-fade-in-up">
                    <div class="stat-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="stat-number" data-target="24">0/7</div>
                    <div class="stat-label">Support Availability</div>
                </div>
            </div>

            <div class="featured-hospitals animate-fade-in-up">
                <div class="hospitals-header">
                    <h3>Trusted by India's Leading Hospitals</h3>
                    <p>Join the growing network of premier healthcare institutions that rely on YUVICARE</p>
                </div>
                
                <div class="hospital-logos">
                    <div class="hospital-logo">
                        <div class="hospital-name">APOLLO</div>
                    </div>
                    <div class="hospital-logo">
                        <div class="hospital-name">FORTIS</div>
                    </div>
                    <div class="hospital-logo">
                        <div class="hospital-name">MAX</div>
                    </div>
                    <div class="hospital-logo">
                        <div class="hospital-name">AIIMS</div>
                    </div>
                    <div class="hospital-logo">
                        <div class="hospital-name">NARAYANA</div>
                    </div>
                    <div class="hospital-logo">
                        <div class="hospital-name">KOKILABEN</div>
                    </div>
                </div>
            </div>

            <div class="featured-ceo-testimonial animate-fade-in-up">
                <div class="ceo-content">
                    <p class="ceo-quote">
                        "YUVICARE isn't just software - it's a strategic partner in our journey towards healthcare excellence. Their platform reduced our patient wait times by 40% and increased operational efficiency by 65%. The ROI was evident within the first quarter."
                    </p>
                    
                    <div class="ceo-info">
                        <div class="ceo-avatar">SK</div>
                        <div class="ceo-details">
                            <h4>Dr. Sanjay Kapoor</h4>
                            <p>Director, National Healthcare Group | Managing 12 hospitals across India</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== CTA Section ===== -->
    <section class="cta-section" id="contact">
        <div class="container">
            <h2>Ready to Transform Your Hospital?</h2>
            <p>Join hundreds of healthcare institutions that have streamlined their operations with YUVICARE. Schedule a personalized demo to see how our platform can work for your hospital.</p>
            <div class="cta-buttons">
                <a href="#" class="btn btn-white pulse-animation">Request a Personalized Demo <i class="fas fa-calendar-alt"></i></a>
                <a href="tel:+919876543210" class="btn btn-secondary">
                    <i class="fas fa-phone"></i> Call Us: +91 98765 43210
                </a>
            </div>
        </div>
    </section>

    <!-- ===== Footer ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <h3>YUVICARE HIMS</h3>
                    <p style="color: #bbb; margin-bottom: 20px; line-height: 1.7;">Complete Hospital Information Management System designed for modern healthcare institutions to deliver exceptional patient care with operational excellence.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#home"><i class="fas fa-chevron-right"></i> Home</a></li>
                        <li><a href="#features"><i class="fas fa-chevron-right"></i> Features</a></li>
                        <li><a href="#modules"><i class="fas fa-chevron-right"></i> Modules</a></li>
                        <li><a href="#technology"><i class="fas fa-chevron-right"></i> Technology</a></li>
                        <li><a href="#contact"><i class="fas fa-chevron-right"></i> Contact</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Our Products</h3>
                    <ul class="footer-links">
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE HIMS Pro</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Clinic</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Diagnostics</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Pharmacy</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right"></i> YUVICARE Telemedicine</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Contact Us</h3>
                    <ul class="contact-info">
                        <li>
                            <i class="fas fa-map-marker-alt"></i>
                            <div>
                                <strong>Head Office</strong>
                                <p>123 Healthcare Street, Medical District, City - 560001</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-phone"></i>
                            <div>
                                <strong>Phone</strong>
                                <p>+91 98765 43210</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <div>
                                <strong>Email</strong>
                                <p>info@yuvicare.com</p>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-clock"></i>
                            <div>
                                <strong>Support Hours</strong>
                                <p>24/7 Support Available</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>© 2025 YUVICARE Hospital Information Management System. All rights reserved. | <a href="#" style="color: var(--primary);">Privacy Policy</a> | <a href="#" style="color: var(--primary);">Terms of Service</a></p>
            </div>
        </div>
    </footer>

    <!-- ===== Scroll to Top Button ===== -->
    <div class="scroll-top" id="scrollTop">
        <i class="fas fa-chevron-up"></i>
    </div>

    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const mainNav = document.getElementById('mainNav');
        
        mobileMenuBtn.addEventListener('click', () => {
            mainNav.classList.toggle('active');
            mobileMenuBtn.innerHTML = mainNav.classList.contains('active') 
                ? '<i class="fas fa-times"></i>' 
                : '<i class="fas fa-bars"></i>';
        });
        
        // Close mobile menu when clicking a link
        document.querySelectorAll('#mainNav a').forEach(link => {
            link.addEventListener('click', () => {
                mainNav.classList.remove('active');
                mobileMenuBtn.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });
        
        // Module Tabs
        const moduleTabs = document.querySelectorAll('.module-tab');
        const moduleContents = document.querySelectorAll('.module-content');
        
        moduleTabs.forEach(tab => {
            tab.addEventListener('click', () => {
                // Remove active class from all tabs and contents
                moduleTabs.forEach(t => t.classList.remove('active'));
                moduleContents.forEach(c => c.classList.remove('active'));
                
                // Add active class to clicked tab
                tab.classList.add('active');
                
                // Show corresponding content
                const tabId = tab.getAttribute('data-tab');
                document.getElementById(tabId).classList.add('active');
            });
        });
        
        // Header scroll effect
        window.addEventListener('scroll', () => {
            const header = document.getElementById('mainHeader');
            const scrollTop = document.getElementById('scrollTop');
            
            if (window.scrollY > 100) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
            
            // Scroll to top button
            if (window.scrollY > 500) {
                scrollTop.classList.add('show');
            } else {
                scrollTop.classList.remove('show');
            }
        });
        
        // Scroll to top functionality
        document.getElementById('scrollTop').addEventListener('click', () => {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
        
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                const targetId = this.getAttribute('href');
                if(targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if(targetElement) {
                    e.preventDefault();
                    window.scrollTo({
                        top: targetElement.offsetTop - 100,
                        behavior: 'smooth'
                    });
                }
            });
        });
        
        // ===== Hero Slideshow =====
        class HeroSlideshow {
            constructor() {
                this.slides = document.querySelectorAll('.hero-slide');
                this.dots = document.querySelectorAll('.slide-dot');
                this.prevBtn = document.querySelector('.prev-arrow');
                this.nextBtn = document.querySelector('.next-arrow');
                this.currentSlide = 0;
                this.totalSlides = this.slides.length;
                this.autoSlideInterval = null;
                this.slideDuration = 5000; // 5 seconds per slide
                
                this.init();
            }
            
            init() {
                // Initialize first slide
                this.showSlide(this.currentSlide);
                
                // Event listeners
                this.prevBtn.addEventListener('click', () => this.prevSlide());
                this.nextBtn.addEventListener('click', () => this.nextSlide());
                
                // Dot click events
                this.dots.forEach((dot, index) => {
                    dot.addEventListener('click', () => this.goToSlide(index));
                });
                
                // Start auto slideshow
                this.startAutoSlide();
                
                // Pause on hover
                const slideshow = document.querySelector('.hero-section');
                slideshow.addEventListener('mouseenter', () => this.pauseAutoSlide());
                slideshow.addEventListener('mouseleave', () => this.startAutoSlide());
            }
            
            showSlide(index) {
                // Hide all slides
                this.slides.forEach(slide => {
                    slide.classList.remove('active');
                });
                
                // Remove active class from all dots
                this.dots.forEach(dot => {
                    dot.classList.remove('active');
                });
                
                // Show current slide
                this.slides[index].classList.add('active');
                this.dots[index].classList.add('active');
                
                // Update current slide index
                this.currentSlide = index;
            }
            
            nextSlide() {
                const nextIndex = (this.currentSlide + 1) % this.totalSlides;
                this.showSlide(nextIndex);
                this.resetAutoSlide();
            }
            
            prevSlide() {
                const prevIndex = (this.currentSlide - 1 + this.totalSlides) % this.totalSlides;
                this.showSlide(prevIndex);
                this.resetAutoSlide();
            }
            
            goToSlide(index) {
                this.showSlide(index);
                this.resetAutoSlide();
            }
            
            startAutoSlide() {
                this.autoSlideInterval = setInterval(() => {
                    this.nextSlide();
                }, this.slideDuration);
            }
            
            pauseAutoSlide() {
                if (this.autoSlideInterval) {
                    clearInterval(this.autoSlideInterval);
                    this.autoSlideInterval = null;
                }
            }
            
            resetAutoSlide() {
                this.pauseAutoSlide();
                this.startAutoSlide();
            }
        }
        
        // ===== Initialize Everything =====
        document.addEventListener('DOMContentLoaded', () => {
            // Initialize slideshow
            const heroSlideshow = new HeroSlideshow();
            
            // Animate hero stats numbers
            const heroStatNumbers = document.querySelectorAll('.hero-stats .stat-number');
            const heroStatsObserver = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        heroStatNumbers.forEach(stat => {
                            const target = parseInt(stat.textContent);
                            const suffix = stat.textContent.includes('%') ? '%' : 
                                          stat.textContent.includes('/') ? '/7' : '+';
                            let current = 0;
                            const increment = target / 50;
                            
                            const timer = setInterval(() => {
                                current += increment;
                                if (current >= target) {
                                    current = target;
                                    clearInterval(timer);
                                }
                                
                                if (suffix === '%') {
                                    stat.textContent = current.toFixed(1) + suffix;
                                } else if (suffix === '/7') {
                                    stat.textContent = Math.floor(current) + suffix;
                                } else {
                                    stat.textContent = Math.floor(current) + suffix;
                                }
                            }, 30);
                        });
                        heroStatsObserver.disconnect();
                    }
                });
            }, { threshold: 0.5 });
            
            heroStatsObserver.observe(document.querySelector('.hero-stats'));
            
            // Animate testimonial stats numbers
            const testimonialStats = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const statNumbers = document.querySelectorAll('.impressive-stats .stat-number');
                        
                        statNumbers.forEach(stat => {
                            const target = parseFloat(stat.getAttribute('data-target'));
                            const suffix = stat.textContent.includes('%') ? '%' : 
                                          stat.textContent.includes('/') ? '/7' : '+';
                            let current = 0;
                            const increment = target / 50;
                            
                            const timer = setInterval(() => {
                                current += increment;
                                if (current >= target) {
                                    current = target;
                                    clearInterval(timer);
                                }
                                
                                if (suffix === '%') {
                                    stat.textContent = current.toFixed(1) + suffix;
                                } else if (suffix === '/7') {
                                    stat.textContent = Math.floor(current) + suffix;
                                } else {
                                    stat.textContent = Math.floor(current) + suffix;
                                }
                            }, 30);
                        });
                        
                        testimonialStats.disconnect();
                    }
                });
            }, { threshold: 0.5 });
            
            testimonialStats.observe(document.querySelector('.impressive-stats'));
            
            // Search functionality
            const searchInput = document.querySelector('.search-box input');
            const searchButton = document.querySelector('.search-box button');
            
            searchButton.addEventListener('click', () => {
                if (searchInput.value.trim()) {
                    alert(`Searching for: "${searchInput.value}"`);
                    searchInput.value = '';
                }
            });
            
            searchInput.addEventListener('keypress', (e) => {
                if (e.key === 'Enter') {
                    searchButton.click();
                }
            });
            
            // Animate elements on scroll
            const observerOptions = {
                threshold: 0.1,
                rootMargin: '0px 0px -50px 0px'
            };

            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate-fade-in-up');
                        observer.unobserve(entry.target);
                    }
                });
            }, observerOptions);

            // Observe all elements that should animate
            document.querySelectorAll('.feature-card, .tech-card, .process-step, .testimonial-card, .stat-card, .featured-hospitals, .featured-ceo-testimonial').forEach(el => {
                observer.observe(el);
            });
        });
    </script>
</body>
</html>