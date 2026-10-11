<%@ Page Title="Trip Planner - Home" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="UserHome.aspx.cs"
    Inherits="Trip_Planer.User.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f6f9fc;
            color: #1d2b3a;
        }

        /* HERO */

        .travel-hero {
            min-height: 600px;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(rgba(8,45,78,0.70), rgba(8,45,78,0.55)),
                url('../images/hero_1.jpg') center center/cover no-repeat;
        }

        .hero-content {
            width: 90%;
            max-width: 1150px;
            margin: auto;
            color: white;
            padding: 80px 20px;
        }

        .hero-small {
            font-size: 15px;
            font-weight: bold;
            letter-spacing: 2px;
            text-transform: uppercase;
            margin-bottom: 15px;
        }

        .hero-content h1 {
            font-size: 58px;
            line-height: 1.1;
            font-weight: 800;
            max-width: 700px;
            margin: 0 0 20px;
        }

        .hero-content p {
            font-size: 19px;
            line-height: 1.7;
            max-width: 650px;
            color: #f0f5fa;
        }

        .hero-buttons {
            margin-top: 30px;
        }

        .hero-btn {
            display: inline-block;
            padding: 14px 27px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            margin-right: 10px;
        }

        .primary-btn {
            background: #1687e8;
            color: white;
        }

        .primary-btn:hover {
            background: #086fc5;
            color: white;
        }

        .outline-btn {
            border: 2px solid white;
            color: white;
        }

        .outline-btn:hover {
            background: white;
            color: #1269a9;
        }


        /* SEARCH BOX */

        .search-area {
            margin-top: -55px;
            position: relative;
            z-index: 5;
        }

        .search-box {
            max-width: 1050px;
            margin: auto;
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.15);
        }

        .search-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
            color: #17324d;
        }

        .search-row {
            display: flex;
            gap: 12px;
        }

        .search-input {
            flex: 1;
            padding: 15px;
            border: 1px solid #d9e1e8;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
        }

        .search-button {
            padding: 15px 28px;
            border: none;
            border-radius: 8px;
            background: #1687e8;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }


        /* COMMON */

        .section {
            padding: 85px 20px;
        }

        .section-container {
            max-width: 1150px;
            margin: auto;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-heading span {
            color: #1687e8;
            font-size: 14px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .section-heading h2 {
            font-size: 36px;
            margin: 10px 0;
            color: #17324d;
        }

        .section-heading p {
            color: #718096;
            max-width: 650px;
            margin: auto;
            line-height: 1.7;
        }


        /* DESTINATIONS */

        .destination-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .destination-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 6px 25px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .destination-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.13);
        }

        .destination-image {
            width: 100%;
            height: 235px;
            object-fit: cover;
        }

        .destination-content {
            padding: 22px;
        }

        .destination-content h3 {
            margin: 0 0 8px;
            color: #17324d;
            font-size: 23px;
        }

        .destination-content p {
            color: #758496;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .destination-link {
            color: #1687e8;
            font-weight: bold;
            text-decoration: none;
        }


        /* PLAN CARDS */

        .plan-section {
            background: #eef7ff;
        }

        .plan-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .plan-card {
            background: white;
            padding: 35px 28px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.06);
            transition: 0.3s;
        }

        .plan-card:hover {
            transform: translateY(-6px);
        }

        .plan-icon {
            width: 70px;
            height: 70px;
            line-height: 70px;
            margin: auto auto 20px;
            border-radius: 50%;
            background: #e2f2ff;
            color: #1687e8;
            font-size: 30px;
        }

        .plan-card h3 {
            color: #17324d;
            margin-bottom: 12px;
        }

        .plan-card p {
            color: #718096;
            line-height: 1.6;
        }

        .plan-card a {
            display: inline-block;
            margin-top: 12px;
            color: #1687e8;
            font-weight: bold;
            text-decoration: none;
        }


        /* FEATURES */

        .feature-area {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 55px;
            align-items: center;
        }

        .feature-image img {
            width: 100%;
            height: 430px;
            object-fit: cover;
            border-radius: 18px;
        }

        .feature-content h2 {
            font-size: 38px;
            color: #17324d;
            margin-bottom: 20px;
        }

        .feature-content > p {
            color: #718096;
            line-height: 1.8;
        }

        .feature-item {
            display: flex;
            margin-top: 25px;
        }

        .feature-number {
            min-width: 45px;
            height: 45px;
            line-height: 45px;
            text-align: center;
            border-radius: 50%;
            background: #1687e8;
            color: white;
            font-weight: bold;
            margin-right: 15px;
        }

        .feature-item h4 {
            margin: 0 0 5px;
            color: #17324d;
        }

        .feature-item p {
            margin: 0;
            color: #718096;
            line-height: 1.5;
        }


        /* STATISTICS */

        .stats {
            background: #17324d;
            color: white;
        }

        .stats-grid {
            max-width: 1000px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            text-align: center;
            gap: 20px;
        }

        .stat h2 {
            font-size: 38px;
            margin: 0;
        }

        .stat p {
            color: #c9d8e5;
            margin-top: 8px;
        }


        /* REVIEWS */

        .review-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .review-card {
            background: white;
            padding: 28px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .stars {
            color: #f5a623;
            font-size: 20px;
            margin-bottom: 15px;
        }

        .review-card p {
            color: #68798b;
            line-height: 1.7;
            font-style: italic;
        }

        .review-card h4 {
            color: #17324d;
            margin-bottom: 3px;
        }

        .review-card small {
            color: #8b98a5;
        }


        /* CTA */

        .journey-section {
            padding: 80px 20px;
            background:
                linear-gradient(rgba(10,74,120,0.90), rgba(10,74,120,0.90)),
                url('../images/hero_1.jpg') center/cover;
            text-align: center;
            color: white;
        }

        .journey-section h2 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .journey-section p {
            font-size: 18px;
            color: #e5f2fb;
            margin-bottom: 30px;
        }

        .journey-btn {
            display: inline-block;
            background: white;
            color: #1269a9;
            padding: 15px 30px;
            border-radius: 8px;
            font-weight: bold;
            text-decoration: none;
        }


        /* RESPONSIVE */

        @media(max-width: 900px) {

            .destination-grid,
            .plan-grid,
            .review-grid {
                grid-template-columns: 1fr 1fr;
            }

            .feature-area {
                grid-template-columns: 1fr;
            }

            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }

            .hero-content h1 {
                font-size: 45px;
            }
        }

        @media(max-width: 600px) {

            .destination-grid,
            .plan-grid,
            .review-grid,
            .stats-grid {
                grid-template-columns: 1fr;
            }

            .search-row {
                flex-direction: column;
            }

            .hero-content h1 {
                font-size: 36px;
            }

            .hero-content p {
                font-size: 16px;
            }

            .section {
                padding: 60px 15px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO -->

    <section class="travel-hero">

        <div class="hero-content">

            <div class="hero-small">
                ✈ Trip Planner
            </div>

            <h1>
                Plan Your Journey.<br />
                Create Your Memories.
            </h1>

            <p>
                Discover amazing destinations, create personalized trips,
                organize your itinerary and make every journey memorable.
            </p>

            <div class="hero-buttons">

                <a href="CreateTrip.aspx" class="hero-btn primary-btn">
                    + Create New Trip
                </a>

                <a href="SearchDestination.aspx" class="hero-btn outline-btn">
                    Explore Destinations
                </a>

            </div>

        </div>

    </section>


    <!-- SEARCH -->

    <section class="search-area">

        <div class="search-box">

            <div class="search-title">
                🔍 Where do you want to go?
            </div>

            <div class="search-row">

                <input type="text"
                       class="search-input"
                       placeholder="Search destination, city or place..." />

                <a href="SearchDestination.aspx"
                   class="search-button"
                   style="text-decoration:none;">
                    Search
                </a>

            </div>

        </div>

    </section>


    <!-- POPULAR DESTINATIONS -->

    <section class="section">

        <div class="section-container">

            <div class="section-heading">

                <span>Explore</span>

                <h2>Popular Destinations</h2>

                <p>
                    Find beautiful places and start planning your next
                    unforgettable journey.
                </p>

            </div>


            <div class="destination-grid">


                <div class="destination-card">

                    <img src="../images/img_1.jpg"
                         class="destination-image"
                         alt="Destination" />

                    <div class="destination-content">

                        <h3>Discover India</h3>

                        <p>
                            Explore beautiful destinations, culture,
                            food and unforgettable experiences.
                        </p>

                        <a href="Destinations.aspx"
                           class="destination-link">
                            Explore More →
                        </a>

                    </div>

                </div>


                <div class="destination-card">

                    <img src="../images/img_2.jpg"
                         class="destination-image"
                         alt="Destination" />

                    <div class="destination-content">

                        <h3>Adventure Awaits</h3>

                        <p>
                            Discover exciting places and create
                            your perfect travel experience.
                        </p>

                        <a href="Destinations.aspx"
                           class="destination-link">
                            Explore More →
                        </a>

                    </div>

                </div>


                <div class="destination-card">

                    <img src="../images/img_3.jpg"
                         class="destination-image"
                         alt="Destination" />

                    <div class="destination-content">

                        <h3>Your Next Escape</h3>

                        <p>
                            Plan your dream trip and make memories
                            that will last forever.
                        </p>

                        <a href="Destinations.aspx"
                           class="destination-link">
                            Explore More →
                        </a>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- PLAN YOUR TRIP -->

    <section class="section plan-section">

        <div class="section-container">

            <div class="section-heading">

                <span>Travel Made Easy</span>

                <h2>Plan Your Trip</h2>

                <p>
                    Everything you need to organize your complete
                    travel experience in one place.
                </p>

            </div>


            <div class="plan-grid">


                <div class="plan-card">

                    <div class="plan-icon">
                        ✈
                    </div>

                    <h3>Create Your Trip</h3>

                    <p>
                        Select your destination and create a personalized
                        travel plan according to your requirements.
                    </p>

                    <a href="CreateTrip.aspx">
                        Create Trip →
                    </a>

                </div>


                <div class="plan-card">

                    <div class="plan-icon">
                        🧳
                    </div>

                    <h3>My Trips</h3>

                    <p>
                        View and manage all your planned trips from
                        one simple dashboard.
                    </p>

                    <a href="MyTrips.aspx">
                        View My Trips →
                    </a>

                </div>


                <div class="plan-card">

                    <div class="plan-icon">
                        📅
                    </div>

                    <h3>Build Itinerary</h3>

                    <p>
                        Organize activities, places and travel plans
                        to create a complete itinerary.
                    </p>

                    <a href="Itinerary.aspx">
                        View Itinerary →
                    </a>

                </div>


            </div>

        </div>

    </section>


    <!-- WHY TRIP PLANNER -->

    <section class="section">

        <div class="section-container">

            <div class="feature-area">


                <div class="feature-image">

                    <img src="../images/img_1.jpg"
                         alt="Travel" />

                </div>


                <div class="feature-content">

                    <span style="color:#1687e8;
                                 font-weight:bold;
                                 letter-spacing:2px;">
                        WHY TRIP PLANNER
                    </span>

                    <h2>
                        Travel Planning Made Simple
                    </h2>

                    <p>
                        Trip Planner helps you organize your travel
                        plans without making the process complicated.
                        Create trips, manage destinations and organize
                        your itinerary from one place.
                    </p>


                    <div class="feature-item">

                        <div class="feature-number">
                            1
                        </div>

                        <div>

                            <h4>Easy Trip Planning</h4>

                            <p>
                                Create and manage your travel plans
                                quickly and easily.
                            </p>

                        </div>

                    </div>


                    <div class="feature-item">

                        <div class="feature-number">
                            2
                        </div>

                        <div>

                            <h4>Organized Itinerary</h4>

                            <p>
                                Keep your complete travel schedule
                                organized in one place.
                            </p>

                        </div>

                    </div>


                    <div class="feature-item">

                        <div class="feature-number">
                            3
                        </div>

                        <div>

                            <h4>Manage Everything</h4>

                            <p>
                                Access your trips and travel details
                                whenever you need them.
                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- STATS -->

    <section class="section stats">

        <div class="stats-grid">

            <div class="stat">

                <h2>100+</h2>

                <p>Travel Plans</p>

            </div>


            <div class="stat">

                <h2>50+</h2>

                <p>Destinations</p>

            </div>


            <div class="stat">

                <h2>500+</h2>

                <p>Happy Travellers</p>

            </div>


            <div class="stat">

                <h2>24/7</h2>

                <p>Travel Access</p>

            </div>

        </div>

    </section>


    <!-- REVIEWS -->

    <section class="section">

        <div class="section-container">

            <div class="section-heading">

                <span>Traveller Stories</span>

                <h2>What Travellers Say</h2>

                <p>
                    A good journey starts with a good plan.
                </p>

            </div>


            <div class="review-grid">


                <div class="review-card">

                    <div class="stars">
                        ★★★★★
                    </div>

                    <p>
                        "Trip Planner made it very easy for me to
                        organize my complete travel plan."
                    </p>

                    <h4>Happy Traveller</h4>

                    <small>Trip Planner User</small>

                </div>


                <div class="review-card">

                    <div class="stars">
                        ★★★★★
                    </div>

                    <p>
                        "I really liked the simple way of managing
                        my trips and itinerary."
                    </p>

                    <h4>Adventure Traveller</h4>

                    <small>Trip Planner User</small>

                </div>


                <div class="review-card">

                    <div class="stars">
                        ★★★★★
                    </div>

                    <p>
                        "Everything related to my journey is available
                        in one place. Very useful."
                    </p>

                    <h4>Frequent Traveller</h4>

                    <small>Trip Planner User</small>

                </div>


            </div>

        </div>

    </section>


    <!-- FINAL CTA -->

    <section class="journey-section">

        <h2>
            Ready to Start Your Journey?
        </h2>

        <p>
            Create your trip today and turn your travel ideas
            into unforgettable memories.
        </p>

        <a href="CreateTrip.aspx"
           class="journey-btn">
            Start Planning →
        </a>

    </section>

</asp:Content>