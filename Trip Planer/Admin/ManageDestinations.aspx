<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageDestinations.aspx.cs" Inherits="Trip_Planer.Admin.ManageDestinations" %>

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

        .destination-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .add-btn {
            display: inline-block;
            background: #1f8a9e;
            color: white;
            padding: 11px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            margin-bottom: 20px;
        }

            .add-btn:hover {
                background: #176d7d;
                color: white;
                text-decoration: none;
            }

        .destination-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

            .destination-table th {
                background: #1f8a9e;
                color: white;
                padding: 14px;
                text-align: left;
            }

            .destination-table td {
                padding: 14px;
                border-bottom: 1px solid #eee;
                color: #555;
            }

            .destination-table tr:hover {
                background: #f7fbfc;
            }

        .category {
            background: #e8f4f6;
            color: #1f6f7d;
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 13px;
            font-weight: 600;
        }

        .action-btn {
            display: inline-block;
            padding: 7px 13px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            margin-right: 5px;
        }

        .view-btn {
            background: #1f8a9e;
            color: white;
        }

        .edit-btn {
            background: #6c757d;
            color: white;
        }

        .delete-btn {
            background: #dc3545;
            color: white;
        }

            .view-btn:hover,
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

            <h2 class="page-title">Manage Destinations</h2>

            <p class="page-subtitle">
                Add, view and manage travel destinations
           
            </p>

            <a href="#" class="add-btn">+ Add New Destination
            </a>

            <div class="destination-box">

                <table class="destination-table">

                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Destination</th>
                            <th>Location</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>1</td>
                            <td><strong>Goa</strong></td>
                            <td>India</td>
                            <td>
                                <span class="category">Beach</span>
                            </td>
                            <td>Beautiful beaches and relaxing places.</td>
                            <td>
                                <a href="#" class="action-btn view-btn">View</a>
                                <a href="#" class="action-btn edit-btn">Edit</a>
                                <a href="#" class="action-btn delete-btn">Delete</a>
                            </td>
                        </tr>

                        <tr>
                            <td>2</td>
                            <td><strong>Manali</strong></td>
                            <td>Himachal Pradesh</td>
                            <td>
                                <span class="category">Mountain</span>
                            </td>
                            <td>A beautiful mountain destination.</td>
                            <td>
                                <a href="#" class="action-btn view-btn">View</a>
                                <a href="#" class="action-btn edit-btn">Edit</a>
                                <a href="#" class="action-btn delete-btn">Delete</a>
                            </td>
                        </tr>

                        <tr>
                            <td>3</td>
                            <td><strong>Kerala</strong></td>
                            <td>India</td>
                            <td>
                                <span class="category">Nature</span>
                            </td>
                            <td>Famous for nature and backwaters.</td>
                            <td>
                                <a href="#" class="action-btn view-btn">View</a>
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
