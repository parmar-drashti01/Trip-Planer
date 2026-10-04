<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyTrips.aspx.cs" Inherits="Trip_Planer.User.MyTrips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .trips-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .trips-container {
            max-width: 1100px;
            margin: auto;
        }

        .trips-title {
            text-align: center;
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .trips-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .top-bar {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .create-btn {
            background: #1f8a9e;
            color: white;
            padding: 11px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
        }

            .create-btn:hover {
                background: #176d7d;
                color: white;
                text-decoration: none;
            }

        .trips-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .trip-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .trip-icon {
            font-size: 40px;
            margin-bottom: 10px;
        }

        .trip-card h3 {
            color: #1f4e5f;
            margin-bottom: 15px;
        }

        .trip-info {
            color: #666;
            line-height: 1.8;
            margin-bottom: 15px;
        }

            .trip-info strong {
                color: #333;
            }

        .status {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 15px;
            font-size: 13px;
            font-weight: 600;
            background: #e5f7ed;
            color: #218838;
        }

        .details-btn {
            display: block;
            text-align: center;
            margin-top: 18px;
            background: #1f8a9e;
            color: white;
            padding: 10px;
            border-radius: 7px;
            text-decoration: none;
            font-weight: 600;
        }

            .details-btn:hover {
                background: #176d7d;
                color: white;
                text-decoration: none;
            }

        @media(max-width: 900px) {
            .trips-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width: 600px) {
            .trips-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="trips-page">

        <div class="trips-container">

            <h2 class="trips-title">My Trips</h2>

            <p class="trips-subtitle">
                View and manage your planned trips
           
            </p>

            <div class="top-bar">

                <a href="CreateTrip.aspx" class="create-btn">+ Create New Trip
                </a>

            </div>


            <div class="trips-grid">

                <asp:Repeater ID="rptTrips" runat="server" OnItemCommand="rptTrips_ItemCommand1">
                    <ItemTemplate>

                        <div class="trip-card">

                            <div class="trip-icon">🏖️</div>

                            <h3>
                                <%# Eval("Trip_Name") %>
            </h3>

                            <div class="trip-info">

                                <strong>Destination:</strong>
                                <%# Eval("Destination") %>
                                <br />

                                <strong>Start Date:</strong>
                                <%# Eval("Start_Date", "{0:dd-MM-yyyy}") %>
                                <br />

                                <strong>End Date:</strong>
                                <%# Eval("End_Date", "{0:dd-MM-yyyy}") %>
                                <br />

                                <strong>Travellers:</strong>
                                <%# Eval("Travellers") %>
                                <br />

                                <strong>Budget:</strong>
                                ₹<%# Eval("Budget") %>
                            </div>

                            <span class="status">Planned </span>
           

                            <asp:HyperLink ID="lnkDetails" runat="server" CssClass="details-btn" NavigateUrl='<%# "TripDetails.aspx?id=" + Eval("Id") %>'>View Details
                            </asp:HyperLink>

                        </div>

                    </ItemTemplate>

                </asp:Repeater>

            </div>

        </div>

    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
