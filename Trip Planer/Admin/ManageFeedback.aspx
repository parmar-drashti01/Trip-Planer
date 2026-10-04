<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="Trip_Planer.Admin.ManageFeedback" %>
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

        .feedback-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            overflow-x: auto;
        }

        .feedback-table {
            width: 100%;
            border-collapse: collapse;
            min-width: 850px;
        }

        .feedback-table th {
            background: #1f8a9e;
            color: white;
            padding: 14px;
            text-align: left;
        }

        .feedback-table td {
            padding: 14px;
            border-bottom: 1px solid #eee;
            color: #555;
            vertical-align: middle;
        }

        .feedback-table tr:hover {
            background: #f7fbfc;
        }

        .rating {
            color: #f5a623;
            font-weight: 600;
        }

        .status {
            padding: 6px 12px;
            border-radius: 15px;
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

        .delete-btn {
            display: inline-block;
            padding: 7px 13px;
            border-radius: 6px;
            background: #dc3545;
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        .delete-btn:hover {
            background: #b02a37;
            color: white;
            text-decoration: none;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="admin-page">

        <div class="container">

            <h2 class="page-title">Manage Feedback</h2>

            <p class="page-subtitle">
                View and manage feedback submitted by users
            </p>

            <div class="feedback-box">

                <table class="feedback-table">

                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>User</th>
                            <th>Trip / Destination</th>
                            <th>Rating</th>
                            <th>Feedback</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>1</td>

                            <td>
                                <strong>Demo User</strong>
                            </td>

                            <td>Goa</td>

                            <td class="rating">
                                ★★★★★
                            </td>

                            <td>
                                Amazing experience and beautiful place.
                            </td>

                            <td>20-08-2026</td>

                            <td>
                                <span class="status approved">
                                    Approved
                                </span>
                            </td>

                            <td>
                                <a href="#" class="delete-btn">
                                    Delete
                                </a>
                            </td>
                        </tr>


                        <tr>
                            <td>2</td>

                            <td>
                                <strong>Test User</strong>
                            </td>

                            <td>Manali</td>

                            <td class="rating">
                                ★★★★☆
                            </td>

                            <td>
                                Great destination and nice experience.
                            </td>

                            <td>23-08-2026</td>

                            <td>
                                <span class="status pending">
                                    Pending
                                </span>
                            </td>

                            <td>
                                <a href="#" class="delete-btn">
                                    Delete
                                </a>
                            </td>
                        </tr>


                        <tr>
                            <td>3</td>

                            <td>
                                <strong>Rahul Patel</strong>
                            </td>

                            <td>Kerala</td>

                            <td class="rating">
                                ★★★★★
                            </td>

                            <td>
                                Wonderful trip planning experience.
                            </td>

                            <td>26-08-2026</td>

                            <td>
                                <span class="status approved">
                                    Approved
                                </span>
                            </td>

                            <td>
                                <a href="#" class="delete-btn">
                                    Delete
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
