<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchDestination.aspx.cs" Inherits="Trip_Planer.User.SearchDestination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .destination-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .destination-container {
            max-width: 1100px;
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

        .search-box {
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            margin-bottom: 30px;
        }

        .search-row {
            display: flex;
            gap: 12px;
        }

        .search-input {
            flex: 1;
            height: 45px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
        }

        .search-input:focus {
            border-color: #1f8a9e;
            outline: none;
        }

        .search-btn {
            width: 130px;
            border: none;
            border-radius: 8px;
            background: #1f8a9e;
            color: white;
            font-weight: 600;
            cursor: pointer;
        }

        .search-btn:hover {
            background: #176d7d;
        }

        .destination-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .destination-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .destination-image {
            height: 170px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 65px;
            background: #e8f4f6;
        }

        .destination-content {
            padding: 22px;
        }

        .destination-content h3 {
            color: #1f4e5f;
            margin-bottom: 8px;
        }

        .location {
            color: #1f8a9e;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 12px;
        }

        .destination-content p {
            color: #777;
            line-height: 1.6;
            margin-bottom: 18px;
        }

        .view-btn {
            display: block;
            text-align: center;
            background: #1f8a9e;
            color: white;
            padding: 10px;
            border-radius: 7px;
            text-decoration: none;
            font-weight: 600;
        }

        .view-btn:hover {
            background: #176d7d;
            color: white;
            text-decoration: none;
        }

        @media(max-width: 900px) {
            .destination-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width: 600px) {
            .destination-grid {
                grid-template-columns: 1fr;
            }

            .search-row {
                flex-direction: column;
            }

            .search-btn {
                width: 100%;
                height: 45px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="destination-page">

        <div class="destination-container">

            <h2 class="page-title">
                Explore Destinations
            </h2>

            <p class="page-subtitle">
                Search and discover your next travel destination
            </p>


            <!-- Search -->
            <div class="search-box">

                <div class="search-row">

                    <asp:TextBox ID="txtSearch"
                        runat="server"
                        CssClass="search-input"
                        placeholder="Search destination...">
                    </asp:TextBox>

                    <asp:Button ID="btnSearch"
                        runat="server"
                        Text="Search"
                        CssClass="search-btn" />

                </div>

            </div>


            <!-- Destinations -->
            <div class="destination-grid">


                <!-- Goa -->
                <div class="destination-card">

                    <div class="destination-image">
                        🏖️
                    </div>

                    <div class="destination-content">

                        <h3>Goa</h3>

                        <div class="location">
                            📍 India
                        </div>

                        <p>
                            Explore beautiful beaches, nightlife
                            and amazing places in Goa.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

                    </div>

                </div>


                <!-- Manali -->
                <div class="destination-card">

                    <div class="destination-image">
                        🏔️
                    </div>

                    <div class="destination-content">

                        <h3>Manali</h3>

                        <div class="location">
                            📍 Himachal Pradesh
                        </div>

                        <p>
                            Enjoy mountains, snow and beautiful
                            natural scenery in Manali.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

                    </div>

                </div>


                <!-- Kerala -->
                <div class="destination-card">

                    <div class="destination-image">
                        🌴
                    </div>

                    <div class="destination-content">

                        <h3>Kerala</h3>

                        <div class="location">
                            📍 India
                        </div>

                        <p>
                            Discover peaceful backwaters, beaches
                            and natural beauty of Kerala.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

                    </div>

                </div>


                <!-- Rajasthan -->
                <div class="destination-card">

                    <div class="destination-image">
                        🏰
                    </div>

                    <div class="destination-content">

                        <h3>Rajasthan</h3>

                        <div class="location">
                            📍 India
                        </div>

                        <p>
                            Experience royal palaces, forts and
                            rich culture of Rajasthan.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

                    </div>

                </div>


                <!-- Kashmir -->
                <div class="destination-card">

                    <div class="destination-image">
                        🏞️
                    </div>

                    <div class="destination-content">

                        <h3>Kashmir</h3>

                        <div class="location">
                            📍 India
                        </div>

                        <p>
                            Explore beautiful valleys, lakes and
                            breathtaking landscapes.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

                    </div>

                </div>


                <!-- Jaipur -->
                <div class="destination-card">

                    <div class="destination-image">
                        🕌
                    </div>

                    <div class="destination-content">

                        <h3>Jaipur</h3>

                        <div class="location">
                            📍 Rajasthan
                        </div>

                        <p>
                            Discover forts, palaces and the colorful
                            culture of Jaipur.
                        </p>

                        <a href="TripDetails.aspx"
                            class="view-btn">
                            View Details
                        </a>

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
