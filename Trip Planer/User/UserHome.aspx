<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Trip_Planer.User.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>

        .user-home {
            font-family: Arial, sans-serif;
            background: #f5f9fc;
            min-height: 80vh;
        }

        /* Hero Section */
        .user-hero {
            min-height: 480px;
            background: linear-gradient(rgba(0,0,0,0.35), rgba(0,0,0,0.35)),
                        url('../images/hero_1.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 60px 20px;
        }

        .hero-content {
            color: white;
            max-width: 700px;
        }

        .hero-content h1 {
            font-size: 48px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .hero-content p {
            font-size: 19px;
            margin-bottom: 30px;
        }

        .start-btn {
            display: inline-block;
            background: #1f8a9e;
            color: white;
            padding: 13px 30px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
        }

        .start-btn:hover {
            background: #176d7d;
            color: white;
            text-decoration: none;
        }

        /* Welcome Section */
        .welcome-section {
            text-align: center;
            padding: 50px 20px 30px;
        }

        .welcome-section h2 {
            color: #1f4e5f;
            font-size: 32px;
            margin-bottom: 10px;
        }

        .welcome-section p {
            color: #777;
            font-size: 16px;
        }

        /* Cards */
        .feature-section {
            padding: 20px 40px 60px;
        }

        .feature-container {
            max-width: 1100px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .feature-card {
            background: white;
            padding: 30px 25px;
            text-align: center;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .feature-card h3 {
            color: #1f4e5f;
            margin: 15px 0 10px;
        }

        .feature-card p {
            color: #777;
            line-height: 1.6;
        }

        .feature-icon {
            font-size: 42px;
        }

        @media(max-width: 768px) {

            .hero-content h1 {
                font-size: 35px;
            }

            .feature-container {
                grid-template-columns: 1fr;
            }

            .feature-section {
                padding: 20px;
            }
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="user-home">

        <!-- Hero Section -->
        <section class="user-hero">

            <div class="hero-content">

                <h1>Plan Your Perfect Trip</h1>

                <p>
                    Discover amazing destinations, create your itinerary
                    and enjoy your journey with Trip Planner.
                </p>

                <a href="CreateTrip.aspx" class="start-btn">
                    Start Planning
                </a>

            </div>

        </section>


        <!-- Welcome Section -->
        <section class="welcome-section">

            <h2>Welcome to Trip Planner</h2>

            <p>
                Everything you need to plan and manage your trips in one place.
            </p>

        </section>


        <!-- Feature Cards -->
        <section class="feature-section">

            <div class="feature-container">

                <div class="feature-card">

                    <div class="feature-icon">🌍</div>

                    <h3>Explore Destinations</h3>

                    <p>
                        Search and discover beautiful destinations
                        for your next journey.
                    </p>

                    <a href="SearchDestination.aspx" class="start-btn">
                        Explore
                    </a>

                </div>


                <div class="feature-card">

                    <div class="feature-icon">🗺️</div>

                    <h3>Create Your Trip</h3>

                    <p>
                        Create your own trip and organize your
                        travel plans easily.
                    </p>

                    <a href="CreateTrip.aspx" class="start-btn">
                        Create Trip
                    </a>

                </div>


                <div class="feature-card">

                    <div class="feature-icon">📋</div>

                    <h3>My Trips</h3>

                    <p>
                        View and manage all your planned trips
                        from one place.
                    </p>

                    <a href="MyTrips.aspx" class="start-btn">
                        View Trips
                    </a>

                </div>

            </div>

        </section>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
