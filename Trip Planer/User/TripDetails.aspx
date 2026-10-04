<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TripDetails.aspx.cs" Inherits="Trip_Planer.User.TripDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .details-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .details-container {
            max-width: 950px;
            margin: auto;
        }

        .details-title {
            text-align: center;
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .details-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .details-box {
            background: white;
            border-radius: 15px;
            padding: 35px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .destination-header {
            text-align: center;
            padding-bottom: 25px;
            border-bottom: 1px solid #eee;
            margin-bottom: 25px;
        }

        .destination-icon {
            font-size: 55px;
            margin-bottom: 10px;
        }

        .destination-header h2 {
            color: #1f4e5f;
            margin-bottom: 8px;
        }

        .status {
            display: inline-block;
            background: #e5f7ed;
            color: #218838;
            padding: 6px 14px;
            border-radius: 15px;
            font-size: 13px;
            font-weight: 600;
        }

        .details-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .info-card {
            background: #f8fbfc;
            border-radius: 10px;
            padding: 18px;
        }

            .info-card h4 {
                color: #1f8a9e;
                margin-bottom: 8px;
                font-size: 15px;
            }

            .info-card p {
                color: #444;
                margin: 0;
                font-size: 16px;
                font-weight: 600;
            }

        .notes-section {
            margin-top: 25px;
            background: #f8fbfc;
            border-radius: 10px;
            padding: 20px;
        }

            .notes-section h4 {
                color: #1f8a9e;
                margin-bottom: 10px;
            }

            .notes-section p {
                color: #666;
                line-height: 1.6;
                margin: 0;
            }

        .action-buttons {
            display: flex;
            gap: 12px;
            margin-top: 30px;
        }

        .action-btn {
            flex: 1;
            text-align: center;
            padding: 12px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
        }

        .itinerary-btn {
            background: #1f8a9e;
            color: white;
        }

        .feedback-btn {
            background: #eef4f6;
            color: #1f6f7d;
        }

        .back-btn {
            background: #6c757d;
            color: white;
        }

        .action-btn:hover {
            text-decoration: none;
            color: white;
        }

        .feedback-btn:hover {
            color: #1f6f7d;
        }

        @media(max-width: 700px) {

            .details-grid {
                grid-template-columns: 1fr;
            }

            .action-buttons {
                flex-direction: column;
            }

            .details-box {
                padding: 25px 20px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="details-page">

        <div class="details-container">

            <h2 class="details-title">Trip Details
            </h2>

            <p class="details-subtitle">
                View complete information about your trip
           
            </p>


            <div class="details-box">

                <div class="destination-header">

                    <div class="destination-icon">
                        🏖️
                   
                    </div>

                    <h2>
                        <asp:Label ID="lblTripName" runat="server"></asp:Label>
                    </h2>

                    <span class="status">Planned
                    </span>

                </div>


                <div class="details-grid">

                    <div class="info-card">

                        <h4>Destination</h4>

                        <p>
                            <asp:Label ID="lblDestination" runat="server"></asp:Label>
                        </p>

                    </div>


                    <div class="info-card">

                        <h4>Trip Type</h4>

                        <p>
                            <asp:Label ID="lblTripType" runat="server"></asp:Label>
                        </p>

                    </div>


                    <div class="info-card">

                        <h4>Start Date</h4>

                        <p>
                            <asp:Label ID="lblStartDate" runat="server"></asp:Label>
                        </p>

                    </div>


                    <div class="info-card">

                        <h4>End Date</h4>

                        <p>
                            <asp:Label ID="lblEndDate" runat="server"></asp:Label>
                        </p>

                    </div>


                    <div class="info-card">

                        <h4>Number of Travellers</h4>

                        <p>
                            <asp:Label ID="lblTravellers" runat="server"></asp:Label>
                        </p>

                    </div>


                    <div class="info-card">

                        <h4>Estimated Budget</h4>

                        <p>
                            ₹<asp:Label ID="lblBudget" runat="server"></asp:Label>
                        </p>

                    </div>

                </div>


                <div class="notes-section">

                    <h4>Notes / Requirements
                    </h4>

                    <p>
                        <asp:Label ID="lblNotes" runat="server"></asp:Label>
                    </p>

                </div>


                <div class="action-buttons">

                    <asp:HyperLink
                        ID="lnkItinerary"
                        runat="server"
                        CssClass="action-btn itinerary-btn">View Itinerary </asp:HyperLink>



                    <a href="Feedback.aspx"
                        class="action-btn feedback-btn">Give Feedback
                    </a>

                    <a href="MyTrips.aspx"
                        class="action-btn back-btn">Back to My Trips
                    </a>

                </div>

            </div>

        </div>

    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
