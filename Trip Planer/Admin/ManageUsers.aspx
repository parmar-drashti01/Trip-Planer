<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Trip_Planer.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .admin-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 0;
        }

        .page-title {
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .page-subtitle {
            color: #777;
            margin-bottom: 30px;
        }

        .user-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .user-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .user-table th {
            background: #1f8a9e;
            color: white;
            padding: 14px;
            text-align: left;
        }

        .user-table td {
            padding: 14px;
            border-bottom: 1px solid #eee;
            color: #555;
        }

        .user-table tr:hover {
            background: #f7fbfc;
        }

        .action-btn {
            display: inline-block;
            padding: 7px 13px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            margin-right: 5px;
        }

        .edit-btn {
            background: #1f8a9e;
            color: white;
        }

        .delete-btn {
            background: #dc3545;
            color: white;
        }

        .edit-btn:hover,
        .delete-btn:hover {
            color: white;
            text-decoration: none;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="admin-page">

        <div class="container">

            <h2 class="page-title">Manage Users</h2>

            <p class="page-subtitle">
                View and manage registered Trip Planner users
            </p>

            <div class="user-box">

                <table class="user-table">

                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Address</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>1</td>
                            <td>Demo</td>
                            <td>User</td>
                            <td>demo@gmail.com</td>
                            <td>9876543210</td>
                            <td>Ahmedabad</td>
                            <td>
                                <a href="#" class="action-btn edit-btn">Edit</a>
                                <a href="#" class="action-btn delete-btn">Delete</a>
                            </td>
                        </tr>

                        <tr>
                            <td>2</td>
                            <td>Test</td>
                            <td>User</td>
                            <td>test@gmail.com</td>
                            <td>9876501234</td>
                            <td>Surat</td>
                            <td>
                                <a href="#" class="action-btn edit-btn">Edit</a>
                                <a href="#" class="action-btn delete-btn">Delete</a>
                            </td>
                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
