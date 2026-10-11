<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationNew.aspx.cs" Inherits="Trip_Planer.RegistrationNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Trip Planner</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #bbdefb);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            width: 900px;
            min-height: 560px;
            background: white;
            border-radius: 20px;
            overflow: hidden;
            display: flex;
            box-shadow: 0 10px 35px rgba(0,0,0,0.15);
        }

        .left-section {
            width: 45%;
            background: linear-gradient(135deg, #1565c0, #42a5f5);
            color: white;
            padding: 55px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

            .left-section h1 {
                font-size: 42px;
                margin-bottom: 15px;
            }

            .left-section p {
                font-size: 17px;
                line-height: 1.7;
            }

        .travel-icon {
            font-size: 65px;
            margin-bottom: 15px;
        }

        .right-section {
            width: 55%;
            padding: 45px 55px;
        }

            .right-section h2 {
                color: #1565c0;
                font-size: 32px;
                margin-bottom: 8px;
            }

        .subtitle {
            color: #777;
            margin-bottom: 25px;
        }

        .input-box {
            margin-bottom: 18px;
        }

            .input-box label {
                display: block;
                margin-bottom: 7px;
                font-weight: bold;
                color: #333;
            }

            .input-box input {
                width: 100%;
                padding: 13px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 15px;
                outline: none;
            }

                .input-box input:focus {
                    border-color: #1565c0;
                }

        .register-btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 8px;
            background: #1565c0;
            color: white;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 5px;
        }

            .register-btn:hover {
                background: #0d47a1;
            }

        .message {
            display: block;
            margin-top: 15px;
            text-align: center;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }

            .login-link a {
                color: #1565c0;
                text-decoration: none;
                font-weight: bold;
            }

        @media(max-width: 750px) {
            .register-box {
                width: 95%;
                flex-direction: column;
            }

            .left-section,
            .right-section {
                width: 100%;
            }

            .left-section {
                padding: 30px;
            }

            .right-section {
                padding: 35px 30px;
            }
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

        <div class="register-box">

            <div class="left-section">

                <div class="travel-icon">✈️</div>

                <h1>Trip Planner</h1>

                <p>
                    Start your journey with us.
                Create your account and plan
                unforgettable trips with ease.
                </p>

            </div>

            <div class="right-section">

                <h2>Create Account</h2>

                <div class="subtitle">
                    Register to start planning your next adventure.
                </div>

                <div class="input-box">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server"
                        placeholder="Enter your name"></asp:TextBox>
                </div>

                <div class="input-box">
                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" runat="server"
                        TextMode="Email"
                        placeholder="Enter your email"></asp:TextBox>
                </div>

                <div class="input-box">
                    <label>Password</label>
                    <asp:TextBox ID="txtPassword" runat="server"
                        TextMode="Password"
                        placeholder="Enter password"></asp:TextBox>
                </div>

                <div class="input-box">
                    <label>Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"
                        TextMode="Password"
                        placeholder="Confirm password"></asp:TextBox>
                </div>

                <asp:Button ID="btnRegister" runat="server"
                    Text="Create Account"
                    CssClass="register-btn"
                    OnClick="btnRegister_Click" />

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="message"></asp:Label>

                <div class="login-link">
                    Already have an account?
                <a href="Login.aspx">Login</a>
                </div>

            </div>

        </div>

    </form>

</body>
</html>
