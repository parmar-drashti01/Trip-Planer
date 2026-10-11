<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trip_Planer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Trip Planner - Login</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            min-height: 100vh;
        }

        /* FULL BACKGROUND */

        .login-page {
            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;

            background-image:
                linear-gradient(
                    rgba(0, 0, 0, 0.48),
                    rgba(0, 0, 0, 0.58)
                ),
                url('images/hero_1.jpg');

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

            padding: 25px;
        }


        /* LOGIN CARD */

        .login-card {
            width: 390px;
            max-width: 100%;

            background: rgba(255, 255, 255, 0.95);

            padding: 38px 35px;

            border-radius: 20px;

            box-shadow:
                0 20px 50px rgba(0,0,0,0.35);

            text-align: left;
        



        /* LOGO / TITLE */

        .logo {
            text-align: center;
            margin-bottom: 28px;
        }

        .logo-icon {
            width: 55px;
            height: 55px;

            background: #168aad;

            color: white;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            margin: 0 auto 12px;

            font-size: 25px;
        }

        .logo h1 {
            font-size: 30px;
            color: #17324d;

            margin-bottom: 5px;

            font-weight: 800;
        }

        .logo p {
            color: #777;
            font-size: 14px;
        }


        /* WELCOME */

        .welcome {
            text-align: center;
            margin-bottom: 25px;
        }

        .welcome h2 {
            color: #222;
            font-size: 23px;
            margin-bottom: 7px;
        }

        .welcome p {
            color: #777;
            font-size: 14px;
        }


        /* LABEL */

        .input-group {
            margin-bottom: 18px;
        }

        .input-group label {
            display: block;

            font-size: 14px;
            font-weight: 600;

            color: #333;

            margin-bottom: 7px;
        }


        /* INPUT */

        .input-box {
            width: 100%;

            height: 48px;

            border: 1px solid #ddd;

            border-radius: 9px;

            padding: 0 14px;

            font-size: 14px;

            outline: none;

            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #168aad;

            box-shadow:
                0 0 0 3px rgba(22,138,173,0.12);
        }


        /* FORGOT */

        .forgot {
            text-align: right;
            margin-top: -8px;
            margin-bottom: 20px;
        }

        .forgot a {
            color: #168aad;

            font-size: 13px;

            text-decoration: none;
        }

        .forgot a:hover {
            text-decoration: underline;
        }


        /* LOGIN BUTTON */

        .login-btn {
            width: 100%;

            height: 50px;

            border: none;

            border-radius: 9px;

            background: #168aad;

            color: white;

            font-size: 16px;

            font-weight: 700;

            cursor: pointer;

            transition: 0.3s;
        }

        .login-btn:hover {
            background: #126782;

            transform: translateY(-1px);
        }


        /* MESSAGE */

        .message {
            display: block;

            text-align: center;

            margin-bottom: 15px;

            font-size: 14px;

            font-weight: 600;
        }


        /* REGISTER */

        .register {
            text-align: center;

            margin-top: 22px;

            color: #777;

            font-size: 14px;
        }

        .register a {
            color: #168aad;

            font-weight: 700;

            text-decoration: none;
        }

        .register a:hover {
            text-decoration: underline;
        }


        /* FOOTER TEXT */

        .bottom-text {
            text-align: center;

            color: #aaa;

            font-size: 11px;

            margin-top: 22px;
        }


        /* MOBILE */

        @media (max-width: 500px) {

            .login-page {
                padding: 18px;
            }

            .login-card {
                padding: 30px 24px;
            }

            .logo h1 {
                font-size: 27px;
            }

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="login-page">

            <div class="login-card">


                <!-- LOGO -->

                <div class="logo">

                    <div class="logo-icon">
                        ✈
                    </div>

                    <h1>Trip Planner</h1>

                    <p>Plan • Explore • Travel</p>

                </div>


                <!-- WELCOME -->

                <div class="welcome">

                    <h2>Welcome Back!</h2>

                    <p>
                        Login to continue your journey
                    </p>

                </div>


                <!-- MESSAGE -->

                <asp:Label ID="lblMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>


                <!-- EMAIL -->

                <div class="input-group">

                    <label>Email Address</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="input-box"
                        TextMode="Email"
                        placeholder="Enter your email">
                    </asp:TextBox>

                </div>


                <!-- PASSWORD -->

                <div class="input-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="input-box"
                        TextMode="Password"
                        placeholder="Enter your password">
                    </asp:TextBox>

                </div>


                <!-- FORGOT -->

                <div class="forgot">

                    <a href="#">
                        Forgot Password?
                    </a>

                </div>


                <!-- LOGIN -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-btn"
                    OnClick="btnLogin_Click" />


                <!-- REGISTER -->

                <div class="register">

                    Don't have an account?

                    <a href="RegistrationNew.aspx">
                        Create Account
                    </a>

                </div>


                <div class="bottom-text">

                    © 2026 Trip Planner · Explore the world

                </div>

            </div>

        </div>

    </form>

</body>

</html>