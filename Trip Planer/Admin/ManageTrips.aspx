<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageTrips.aspx.cs" Inherits="Trip_Planer.Admin.ManageTrips" %>

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

        .trip-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            overflow-x: auto;
        }

        .trip-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            min-width: 900px;
        }

            .trip-table th {
                background: #1f8a9e;
                color: white;
                padding: 14px;
                text-align: left;
                white-space: nowrap;
            }

            .trip-table td {
                padding: 14px;
                border-bottom: 1px solid #eee;
                color: #555;
            }

            .trip-table tr:hover {
                background: #f7fbfc;
            }

        .status {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
        }

        .approved {
            background: #e5f7ed;
            color: #218838;
        }

        .pending {
            background: #fff3cd;
            color: #856404;
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

        .add-trip-btn {
            display: inline-block;
            background: #1f8a9e;
            color: white;
            padding: 11px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            margin-bottom: 20px;
        }

            .add-trip-btn:hover {
                background: #176d7d;
                color: white;
                text-decoration: none;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    div class="admin-page">

       

    <div class="container">

        <!-- Page Heading -->

        <h2 class="page-title">Manage Trips</h2>

        <p class="page-subtitle">
            View and manage trips created by Trip Planner users
           
        </p>


        <!-- Add Trip Button -->

        <a href="#" class="add-trip-btn">+ Add New Trip
            </a>


        <!-- Trip Table -->

        <div class="trip-box">

            <table class="trip-table">

                <thead>
                    <tr>
                        <th>Trip ID</th>
                        <th>User</th>
                        <th>Destination</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Travellers</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <td>1</td>
                        <td>Demo User</td>
                        <td>Goa</td>
                        <td>10-09-2026</td>
                        <td>14-09-2026</td>
                        <td>2</td>

                        <td>
                            <span class="status approved">Approved
                                </span>
                        </td>

                        <td>
                            <a href="#" class="action-btn view-btn">View
                                </a>

                            <a href="#" class="action-btn edit-btn">Edit
                                </a>

                            <a href="#" class="action-btn delete-btn">Delete
                                </a>
                        </td>
                    </tr>


                    <tr>
                        <td>2</td>
                        <td>Test User</td>
                        <td>Manali</td>
                        <td>20-09-2026</td>
                        <td>25-09-2026</td>
                        <td>4</td>

                        <td>
                            <span class="status pending">Pending
                                </span>
                        </td>

                        <td>
                            <a href="#" class="action-btn view-btn">View
                                </a>

                            <a href="#" class="action-btn edit-btn">Edit
                                </a>

                            <a href="#" class="action-btn delete-btn">Delete
                                </a>
                        </td>
                    </tr>


                    <tr>
                        <td>3</td>
                        <td>Rahul Patel</td>
                        <td>Kerala</td>
                        <td>05-10-2026</td>
                        <td>10-10-2026</td>
                        <td>3</td>

                        <td>
                            <span class="status approved">Approved
                                </span>
                        </td>

                        <td>
                            <a href="#" class="action-btn view-btn">View
                                </a>

                            <a href="#" class="action-btn edit-btn">Edit
                                </a>

                            <a href="#" class="action-btn delete-btn">Delete
                                </a>
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
