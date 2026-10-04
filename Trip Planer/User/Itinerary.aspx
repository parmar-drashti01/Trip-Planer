<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Itinerary.aspx.cs" Inherits="Trip_Planer.User.Itinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .itinerary-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .itinerary-container {
            max-width: 950px;
            margin: auto;
        }

        .page-title {
            text-align: center;
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .page-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .itinerary-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .trip-header {
            text-align: center;
            padding-bottom: 25px;
            border-bottom: 1px solid #eee;
            margin-bottom: 25px;
        }

        .trip-icon {
            font-size: 50px;
        }

        .trip-header h2 {
            color: #1f4e5f;
            margin: 10px 0 5px;
        }

        .trip-header p {
            color: #777;
            margin: 0;
        }

        .day-card {
            border-left: 4px solid #1f8a9e;
            background: #f8fbfc;
            padding: 20px;
            margin-bottom: 18px;
            border-radius: 0 10px 10px 0;
        }

        .day-card h3 {
            color: #1f4e5f;
            margin-bottom: 12px;
        }

        .day-card p {
            color: #666;
            line-height: 1.7;
            margin: 5px 0;
        }

        .time {
            color: #1f8a9e;
            font-weight: 600;
        }

        .back-btn {
            display: block;
            text-align: center;
            margin-top: 25px;
            background: #1f8a9e;
            color: white;
            padding: 11px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
        }

        .back-btn:hover {
            background: #176d7d;
            color: white;
            text-decoration: none;
        }

        @media(max-width: 600px) {
            .itinerary-box {
                padding: 20px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="itinerary-page">

        <div class="itinerary-container">

            <h2 class="page-title">
                Trip Itinerary
            </h2>

            <p class="page-subtitle">
                Your day-by-day travel plan
            </p>


            <div class="itinerary-box">

                <div class="trip-header">

                    <div class="trip-icon">
                        🏖️
                    </div>

                    <h2>
                        <asp:Label ID="lblTripName" runat="server"></asp:Label>
                    </h2>

                    <p>
                        <asp:Label ID="lblDestination" runat="server"></asp:Label>
                        |
                        <asp:Label ID="lblStartDate" runat="server"></asp:Label>
                        -
                        <asp:Label ID="lblEndDate" runat="server"></asp:Label>
                    </p>

                </div>


                <asp:Repeater ID="rptItinerary" runat="server">

                    <ItemTemplate>

                        <div class="day-card">

                            <h3>
                                Day <%# Eval("Day_No") %> -
                                <%# Eval("Day_Title") %>
                            </h3>

                            <p>
                                <span class="time">
                                    <%# Eval("Activity_Time") %>
                                </span>
                                -
                                <%# Eval("Activity") %>
                            </p>

                        </div>

                    </ItemTemplate>

                </asp:Repeater>


                <a href="MyTrips.aspx" class="back-btn">
                    ← Back to My Trips
                </a>

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
