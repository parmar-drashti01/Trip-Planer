<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Trip_Planer.User.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .profile-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .profile-container {
            max-width: 850px;
            margin: auto;
        }

        .profile-title {
            text-align: center;
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .profile-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .profile-box {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-icon {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            background: #e8f4f6;
            color: #1f8a9e;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
            font-size: 42px;
        }

        .profile-header h3 {
            color: #1f4e5f;
            margin-top: 15px;
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            color: #333;
            font-weight: 600;
            margin-bottom: 7px;
        }

        .profile-input {
            width: 100%;
            height: 44px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
        }

            .profile-input:focus {
                border-color: #1f8a9e;
                outline: none;
                box-shadow: 0 0 5px rgba(31,138,158,0.20);
            }

        .profile-address {
            width: 100%;
            min-height: 90px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
            resize: vertical;
        }

        .save-btn {
            display: block;
            width: 100%;
            height: 45px;
            border: none;
            border-radius: 8px;
            background: #1f8a9e;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
        }

            .save-btn:hover {
                background: #176d7d;
            }

        @media(max-width: 700px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 0;
            }

            .profile-box {
                padding: 25px 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-page">

        <div class="profile-container">

            <h2 class="profile-title">My Profile</h2>

            <p class="profile-subtitle">
                View and manage your personal information
           
            </p>

            <div class="profile-box">

                <div class="profile-header">

                    <div class="profile-icon">
                        👤
                   
                    </div>

                    <h3>User Profile</h3>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label class="form-label">
                            First Name
                       
                        </label>

                        <asp:TextBox ID="txtFirstName"
                            runat="server"
                            CssClass="profile-input"
                            placeholder="Enter first name">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Last Name
                       
                        </label>

                        <asp:TextBox ID="txtLastName"
                            runat="server"
                            CssClass="profile-input"
                            placeholder="Enter last name">
                        </asp:TextBox>

                    </div>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label class="form-label">
                            Email
                       
                        </label>

                        <asp:TextBox ID="txtEmail"
                            runat="server"
                            CssClass="profile-input"
                            placeholder="Enter email">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Mobile Number
                       
                        </label>

                        <asp:TextBox ID="txtMobile"
                            runat="server"
                            CssClass="profile-input"
                            placeholder="Enter mobile number">
                        </asp:TextBox>

                    </div>

                </div>


                <div class="form-group">

                    <label class="form-label">
                        Address
                   
                    </label>

                    <asp:TextBox ID="txtAddress"
                        runat="server"
                        CssClass="profile-address"
                        TextMode="MultiLine"
                        placeholder="Enter your address">
                    </asp:TextBox>

                </div>


                <asp:Button ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-btn"
                    OnClick="btnSave_Click" />

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
