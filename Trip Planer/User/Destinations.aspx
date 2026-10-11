
<%@ Page Title="Destinations" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Destinations.aspx.cs"
    Inherits="Trip_Planer.User.Destinations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .destination-page {
            background: #f3f7fb;
            padding: 40px 25px;
            font-family: Arial, sans-serif;
            min-height: 80vh;
        }

        .destination-container {
            max-width: 1200px;
            margin: auto;
        }

        .destination-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .destination-heading h1 {
            color: #176B87;
            font-size: 34px;
            margin-bottom: 12px;
        }

        .destination-heading p {
            color: #71818d;
            font-size: 15px;
            line-height: 1.6;
        }

        /* Search Bar */
        .search-box {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            width: 100%;
            max-width: 600px;
            margin: 0 auto 35px;
        }

        .search-box input[type="text"] {
            flex: 1;
            width: 100%;
            min-width: 0;
            height: 48px;
            padding: 0 16px;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            outline: none;
            background: #ffffff;
            color: #334155;
            font-size: 15px;
            box-sizing: border-box;
            box-shadow: 0 3px 12px rgba(30, 65, 90, 0.06);
        }

        .search-box input[type="text"]:focus {
            border-color: #176B87;
            box-shadow: 0 0 0 3px rgba(23, 107, 135, 0.12);
        }

        .search-box input[type="submit"] {
            height: 48px;
            padding: 0 26px;
            border: none;
            border-radius: 10px;
            background: #176B87;
            color: white;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .search-box input[type="submit"]:hover {
            background: #104e65;
        }

        #noResults {
            display: none;
            text-align: center;
            color: #176B87;
            font-size: 16px;
            padding: 20px;
            margin-bottom: 20px;
        }

        /* Destination Cards */
        .destination-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 25px;
        }

        .destination-card {
            background: white;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 6px 22px rgba(30, 65, 90, 0.09);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .destination-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 30px rgba(30, 65, 90, 0.15);
        }

        .destination-image {
            width: 100%;
            height: 220px;
            object-fit: cover;
            display: block;
        }

        .destination-content {
            padding: 22px;
        }

        .destination-content h3 {
            color: #176B87;
            font-size: 22px;
            margin: 0 0 12px;
        }

        .destination-location {
            color: #8797a1;
            font-size: 13px;
            margin-bottom: 12px;
        }

        .destination-description {
            color: #5d6d78;
            font-size: 14px;
            line-height: 1.7;
            min-height: 70px;
        }

        .destination-tags {
            margin: 15px 0;
        }

        .destination-tag {
            display: inline-block;
            background: #e8f5f7;
            color: #176B87;
            padding: 6px 10px;
            border-radius: 20px;
            font-size: 11px;
            margin: 3px 3px 3px 0;
        }

        .destination-button {
            display: block;
            text-align: center;
            background: #176B87;
            color: white;
            text-decoration: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            transition: background 0.3s;
        }

        .destination-button:hover {
            background: #104e65;
            color: white;
        }

        /* Tablet */
        @media (max-width: 900px) {
            .destination-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        /* Mobile */
        @media (max-width: 600px) {
            .destination-page {
                padding: 25px 12px;
            }

            .destination-heading h1 {
                font-size: 27px;
            }

            .destination-grid {
                grid-template-columns: 1fr;
            }

            .search-box {
                gap: 8px;
            }

            .search-box input[type="text"] {
                font-size: 14px;
                padding: 0 10px;
            }

            .search-box input[type="submit"] {
                padding: 0 16px;
            }

            .destination-image {
                height: 210px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="destination-page">

        <div class="destination-container">

            <div class="destination-heading">
                <h1>Explore Destinations</h1>
                <p>Discover beautiful places and plan your next unforgettable journey.</p>
            </div>

            <!-- Search Bar -->
            <div class="search-box">

                <asp:TextBox ID="txtSearch" runat="server"
                    placeholder="Search your destination...">
                </asp:TextBox>

                <asp:Button ID="btnSearch" runat="server"
                    Text="Search" UseSubmitBehavior="false" />

            </div>

            <p id="noResults">
                No destination found. Please try another destination.
            </p>

            <!-- Destination Cards -->
            <div class="destination-grid">

                <!-- Goa -->
                <div class="destination-card" data-name="Goa">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1512343879784-a960bf40e7f2?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Goa beach" />

                    <div class="destination-content">
                        <h3>Goa</h3>
                        <div class="destination-location">📍 Goa, India</div>

                        <p class="destination-description">
                            Enjoy beautiful beaches, ocean views, sunsets and relaxing holidays.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">Beaches</span>
                            <span class="destination-tag">Adventure</span>
                        </div>

                       <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Goa") %>">Plan a Trip</a>
                    </div>
                </div>

                <!-- Manali -->
                <div class="destination-card" data-name="Manali">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1626621341517-bbf3d9990a23?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Manali mountains" />

                    <div class="destination-content">
                        <h3>Manali</h3>
                        <div class="destination-location">📍 Himachal Pradesh, India</div>

                        <p class="destination-description">
                            Experience mountain scenery, fresh air, valleys and exciting activities.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">Mountains</span>
                            <span class="destination-tag">Nature</span>
                        </div>

                        <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Manali") %>">Plan a Trip</a>
                    </div>
                </div>

                <!-- Kashmir -->
                <div class="destination-card" data-name="Kashmir">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1595815771614-ade9d652a65d?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Kashmir landscape" />

                    <div class="destination-content">
                        <h3>Kashmir</h3>
                        <div class="destination-location">📍 Jammu and Kashmir, India</div>

                        <p class="destination-description">
                            Explore scenic lakes, green valleys, gardens and spectacular mountains.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">Nature</span>
                            <span class="destination-tag">Scenery</span>
                        </div>

                       <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Kashmir") %>">Plan a Trip</a>
                    </div>
                </div>

                <!-- Rajasthan -->
                <div class="destination-card" data-name="Rajasthan">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1477587458883-47145ed94245?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Rajasthan palace" />

                    <div class="destination-content">
                        <h3>Rajasthan</h3>
                        <div class="destination-location">📍 Rajasthan, India</div>

                        <p class="destination-description">
                            Discover royal palaces, historic forts, colourful markets and desert culture.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">History</span>
                            <span class="destination-tag">Culture</span>
                        </div>

                       <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Rajasthan") %>">Plan a Trip</a>
                    </div>
                </div>

                <!-- Mumbai -->
                <div class="destination-card" data-name="Mumbai">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1567157577867-05ccb1388e66?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Mumbai city" />

                    <div class="destination-content">
                        <h3>Mumbai</h3>
                        <div class="destination-location">📍 Maharashtra, India</div>

                        <p class="destination-description">
                            Explore city attractions, famous landmarks, street food and coastal views.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">City Life</span>
                            <span class="destination-tag">Food</span>
                        </div>

                        <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Mumbai") %>">Plan a Trip</a>
                    </div>
                </div>

                <!-- Agra -->
                <div class="destination-card" data-name="Agra">
                    <img class="destination-image"
                        src="https://images.unsplash.com/photo-1564507592333-c60657eea523?auto=format&amp;fit=crop&amp;w=900&amp;q=80"
                        alt="Agra Taj Mahal" />

                    <div class="destination-content">
                        <h3>Agra</h3>
                        <div class="destination-location">📍 Uttar Pradesh, India</div>

                        <p class="destination-description">
                            Visit iconic historical monuments and admire remarkable Mughal architecture.
                        </p>

                        <div class="destination-tags">
                            <span class="destination-tag">Heritage</span>
                            <span class="destination-tag">Architecture</span>
                        </div>

                        <a class="destination-button"
   href="<%= ResolveUrl("~/User/CreateTrip.aspx?destination=Agra") %>">Plan a Trip</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Destination Search -->
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {

            var searchBox = document.getElementById(
                "<%= txtSearch.ClientID %>");

            var searchButton = document.getElementById(
                "<%= btnSearch.ClientID %>");

            var cards = document.querySelectorAll(".destination-card");
            var noResults = document.getElementById("noResults");

            function searchDestinations() {

                var searchText = searchBox.value.trim().toLowerCase();
                var found = 0;

                cards.forEach(function (card) {

                    var name = card.getAttribute("data-name").toLowerCase();

                    if (name.indexOf(searchText) !== -1) {
                        card.style.display = "";
                        found++;
                    } else {
                        card.style.display = "none";
                    }
                });

                noResults.style.display = found === 0 ? "block" : "none";
            }

            searchButton.addEventListener("click", function (event) {
                event.preventDefault();
                searchDestinations();
            });

            searchBox.addEventListener("input", searchDestinations);

            searchBox.addEventListener("keydown", function (event) {
                if (event.key === "Enter") {
                    event.preventDefault();
                    searchDestinations();
                }
            });

        });
    </script>

</asp:Content>
