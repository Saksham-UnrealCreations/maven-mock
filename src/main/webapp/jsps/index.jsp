<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Saksham | DevOps & Java Portfolio</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1e293b, #0f172a);
            color: white;
        }

        .container {
            width: 85%;
            margin: auto;
            padding: 30px;
        }

        .hero {
            text-align: center;
            padding: 60px 20px;
            border-bottom: 2px solid #334155;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 10px;
        }

        .hero h2 {
            font-size: 24px;
            font-weight: normal;
            color: #94a3b8;
        }

        .card {
            background: #1e293b;
            padding: 25px;
            margin: 25px 0;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.4);
        }

        .section-title {
            color: #38bdf8;
            margin-bottom: 15px;
            font-size: 24px;
        }

        .footer {
            text-align: center;
            padding: 20px;
            border-top: 1px solid #334155;
            color: #94a3b8;
            margin-top: 30px;
        }

        a {
            color: #38bdf8;
            text-decoration: none;
        }

        .highlight {
            color: #22c55e;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">

    <div class="hero">
        <h1>Welcome to My DevOps Portfolio</h1>
        <h2>Saksham | Java Developer | DevOps Engineer</h2>
        <p>📍 Uttarakhand, India</p>
    </div>

    <div class="card">
        <div class="section-title">👨‍💻 About Me</div>
        <p>
            Passionate Java and DevOps Engineer with hands-on experience in
            <span class="highlight">AWS, Kubernetes, Docker, Jenkins, Terraform, Ansible, Java, and Spring Boot</span>.
            This project is built to showcase deployment automation and cloud-native application hosting.
        </p>
    </div>

    <div class="card">
        <div class="section-title">🌐 Server Information</div>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        <p><b>Server Host Name:</b> <%= inetAddress.getHostName() %></p>
        <p><b>Server IP Address:</b> <%= ip %></p>
    </div>

    <div class="card">
        <div class="section-title">🖥 Client Information</div>
        <p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host Name:</b> <%= request.getRemoteHost() %></p>
    </div>

    <div class="card">
        <div class="section-title">🚀 Project Highlights</div>
        <ul>
            <li>CI/CD Pipeline with Jenkins</li>
            <li>Dockerized Java Spring Boot Application</li>
            <li>Kubernetes Deployment using Helm</li>
            <li>Infrastructure Provisioning using Terraform</li>
            <li>Configuration Management using Ansible</li>
        </ul>
    </div>

    <div class="card">
        <div class="section-title">📧 Contact</div>
        <p>Email: <a href="mailto:yourmail@example.com">saksham18bahuguna@gmail.com</a></p>
        <p>Location: Uttarakhand, India</p>
    </div>

    <div class="footer">
        © 2026 Saksham | Personal DevOps Portfolio Project
    </div>

</div>

</body>
</html>
