<%@ Page Title="My Trips" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="MyTrips.aspx.cs"
    Inherits="Trip_Planer.User.MyTrips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .mytrips-page {
            min-height: 80vh;
            padding: 40px 25px;
            background: #f3f7fb;
            font-family: Arial, sans-serif;
        }

        .mytrips-container {
            max-width: 1200px;
            margin: auto;
        }

        .mytrips-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 30px;
        }

        .mytrips-title {
            color: #176B87;
            font-size: 32px;
            margin: 0 0 10px;
        }

        .mytrips-subtitle {
            color: #71818d;
            margin: 0;
            font-size: 15px;
        }

        .create-trip-link {
            display: inline-block;
            background: #176B87;
            color: white;
            text-decoration: none;
            padding: 13px 22px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: bold;
            transition: 0.3s;
        }

            .create-trip-link:hover {
                background: #104e65;
                color: white;
            }

        .mytrips-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 8px 25px rgba(30, 65, 90, 0.08);
            overflow-x: auto;
        }

        .mytrips-card-title {
            font-size: 20px;
            font-weight: bold;
            color: #294653;
            margin: 0 0 22px;
        }

        .trip-grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
            color: #425563;
        }

            .trip-grid th {
                background: #176B87;
                color: white;
                text-align: left;
                padding: 15px 12px;
                white-space: nowrap;
            }

            .trip-grid td {
                padding: 15px 12px;
                border-bottom: 1px solid #e8eef2;
                vertical-align: top;
            }

            .trip-grid tr:nth-child(even) {
                background: #f8fbfd;
            }

            .trip-grid tr:hover {
                background: #edf7fa;
            }

            .trip-grid th:first-child {
                border-radius: 7px 0 0 0;
            }

            .trip-grid th:last-child {
                border-radius: 0 7px 0 0;
            }

        .trip-message {
            display: block;
            padding: 25px 10px;
            text-align: center;
            color: #176B87;
            font-size: 15px;
            font-weight: bold;
        }

        .mytrips-note {
            color: #8797a1;
            font-size: 12px;
            text-align: center;
            margin-top: 22px;
        }

        @media (max-width: 650px) {
            .mytrips-page {
                padding: 25px 12px;
            }

            .mytrips-title {
                font-size: 26px;
            }

            .mytrips-card {
                padding: 15px;
            }

            
            .trip-grid a {
                display: inline-block;
                margin: 3px;
                padding: 7px 11px;
                background: #176B87;
                color: white;
                text-decoration: none;
                border-radius: 6px;
                font-size: 12px;
                font-weight: bold;
            }

            .trip-grid a:hover {
                background: #104e65;
            }

            .trip-grid input[type="text"] {
                width: 110px;
                padding: 7px;
                border: 1px solid #cbd9e1;
                border-radius: 5px;
            }

            
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mytrips-page">

        <div class="mytrips-container">

            <div class="mytrips-header">

                <div>
                    <h1 class="mytrips-title">My Trips</h1>
                    <p class="mytrips-subtitle">
                        View and manage all your planned journeys.
                    </p>
                </div>

                <asp:HyperLink ID="lnkCreateTrip" runat="server"
                    NavigateUrl="~/User/CreateTrip.aspx"
                    CssClass="create-trip-link">
                    + Create New Trip
                </asp:HyperLink>

            </div>

            <div class="mytrips-card">

                <h3 class="mytrips-card-title">Your Travel Plans</h3>


                <asp:GridView ID="gvTrips" runat="server"
                    CssClass="trip-grid"
                    AutoGenerateColumns="False"
                    DataKeyNames="Id"
                    GridLines="None"
                    Width="100%"
                    EmptyDataText="You have not created any trips yet."
                    OnRowEditing="gvTrips_RowEditing"
                    OnRowCancelingEdit="gvTrips_RowCancelingEdit"
                    OnRowUpdating="gvTrips_RowUpdating"
                    OnRowDeleting="gvTrips_RowDeleting">

                    <Columns>

                        <asp:BoundField DataField="Trip_Name"
                            HeaderText="Trip Name" />

                        <asp:BoundField DataField="Destination"
                            HeaderText="Destination" />

                        <asp:BoundField DataField="Start_Date"
                            HeaderText="Start Date"
                            DataFormatString="{0:dd-MM-yyyy}" />

                        <asp:BoundField DataField="End_Date"
                            HeaderText="End Date"
                            DataFormatString="{0:dd-MM-yyyy}" />

                        <asp:BoundField DataField="Travellers"
                            HeaderText="Travellers" />

                        <asp:BoundField DataField="Trip_Type"
                            HeaderText="Trip Type" />

                        <asp:BoundField DataField="Budget"
                            HeaderText="Budget (₹)" />

                        <asp:BoundField DataField="Notes"
                            HeaderText="Notes" />

                        <asp:CommandField ShowEditButton="True"
                            EditText="Edit"
                            UpdateText="Save"
                            CancelText="Cancel"
                            HeaderText="Edit" />

                        <asp:CommandField ShowDeleteButton="True"
                            DeleteText="Delete"
                            HeaderText="Delete" />

                    </Columns>

                </asp:GridView>


                <asp:Label ID="lblMessage" runat="server"
                    CssClass="trip-message"></asp:Label>

                <p class="mytrips-note">
                    Your trips are displayed according to your logged-in account.
                </p>

            </div>

        </div>

    </div>

</asp:Content>
