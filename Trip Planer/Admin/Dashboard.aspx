<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Trip_Planer.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .admin-dashboard {
            background: #f5f9fc;
            min-height: 75vh;
            padding: 45px 0;
        }

        .dashboard-title {
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .dashboard-subtitle {
            color: #777;
            margin-bottom: 30px;
        }

        .dashboard-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

            .dashboard-card:hover {
                transform: translateY(-5px);
            }

        .card-number {
            font-size: 30px;
            font-weight: 700;
            color: #1f8a9e;
        }

        .card-title {
            color: #555;
            font-size: 16px;
            margin-top: 5px;
        }

        .card-icon {
            font-size: 35px;
            color: #1f8a9e;
            margin-bottom: 10px;
        }

        .quick-title {
            color: #1f4e5f;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .quick-btn {
            display: block;
            text-decoration: none;
            background: #1f8a9e;
            color: white;
            padding: 14px 20px;
            border-radius: 8px;
            text-align: center;
            margin-bottom: 12px;
            font-weight: 600;
        }

            .quick-btn:hover {
                background: #176d7d;
                color: white;
                text-decoration: none;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-dashboard">

        <div class="container">



            <h2 class="dashboard-title">Admin Dashboard</h2>

            <p class="dashboard-subtitle">
                Welcome to Trip Planner Admin Panel
           
            </p>



            <div class="row">

                <div class="col-md-3">
                    <div class="dashboard-card text-center">

                        <div class="card-icon">
                            👥
                       
                        </div>

                        <div class="card-number">
                            0
                       
                        </div>

                        <div class="card-title">
                            Total Users
                       
                        </div>

                    </div>
                </div>


                <div class="col-md-3">
                    <div class="dashboard-card text-center">

                        <div class="card-icon">
                            ✈️
                       
                        </div>

                        <div class="card-number">
                            0
                       
                        </div>

                        <div class="card-title">
                            Total Trips
                       
                        </div>

                    </div>
                </div>


                <div class="col-md-3">
                    <div class="dashboard-card text-center">

                        <div class="card-icon">
                            📍
                       
                        </div>

                        <div class="card-number">
                            0
                       
                        </div>

                        <div class="card-title">
                            Destinations
                       
                        </div>

                    </div>
                </div>


                <div class="col-md-3">
                    <div class="dashboard-card text-center">

                        <div class="card-icon">
                            💬
                       
                        </div>

                        <div class="card-number">
                            0
                       
                        </div>

                        <div class="card-title">
                            Feedback
                       
                        </div>

                    </div>
                </div>

            </div>




            <div class="dashboard-card">

                <h3 class="quick-title">Quick Management </h3>

                <div class="row">

                    <div class="col-md-4">
                        <a href="ManageUsers.aspx" class="quick-btn">Manage Users </a>
                    </div>

                    <div class="col-md-4">
                        <a href="ManageTrips.aspx" class="quick-btn">Manage Trips</a>
                    </div>


                    <div class="col-md-4">
                        <a href="ManageDestinations.aspx" class="quick-btn">Manage Destinations </a>
                    </div>

                    <div class="col-md-4">
                        <a href="ManageBlogs.aspx" class="quick-btn">Manage Blogs</a>
                    </div>

                    <div class="col-md-4">
                        <a href="ManageFeedback.aspx" class="quick-btn">Manage Feedback</a>
                    </div>


                </div>

            </div>

        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
