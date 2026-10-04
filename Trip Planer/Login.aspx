<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trip_Planer.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-section {
            min-height: 75vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f5f9fc;
            padding: 40px 0;
        }

        .login-box {
            width: 100%;
            max-width: 450px;
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0,0,0,0.10);
        }

        .login-title {
            text-align: center;
            margin-bottom: 10px;
            font-size: 32px;
            font-weight: 700;
            color: #1f4e5f;
        }

        .login-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .login-label {
            font-weight: 600;
            color: #333;
            margin-bottom: 7px;
            display: block;
        }

        .login-input {
            width: 100%;
            height: 45px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            margin-bottom: 18px;
            box-sizing: border-box;
        }

        .login-input:focus {
            border-color: #1f8a9e;
            outline: none;
            box-shadow: 0 0 5px rgba(31,138,158,0.25);
        }

        .login-btn {
            width: 100%;
            height: 45px;
            border: none;
            border-radius: 8px;
            background: #1f8a9e;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #176d7d;
        }

        .login-message {
            display: block;
            text-align: center;
            margin-top: 15px;
        }

        .register-text {
            text-align: center;
            margin-top: 22px;
            color: #666;
        }

        .register-text a {
            color: #1f8a9e;
            font-weight: 600;
            text-decoration: none;
        }

        .register-text a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="login-section">

        <div class="login-box">

            <h2 class="login-title">Welcome Back</h2>

            <p class="login-subtitle">
                Login to continue planning your trip
            </p>

            <label class="login-label">Email</label>

            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="login-input"
                placeholder="Enter your email">
            </asp:TextBox>


            <label class="login-label">Password</label>

            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="login-input"
                TextMode="Password"
                placeholder="Enter your password">
            </asp:TextBox>


            <asp:Button ID="btnLogin" runat="server"
                Text="Login"
                CssClass="login-btn"
                OnClick="btnLogin_Click" />


            <asp:Label ID="lblMessage" runat="server"
                CssClass="login-message">
            </asp:Label>


            <p class="register-text">
                Don't have an account?
                <a href="Registration.aspx">Register Now</a>
            </p>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
