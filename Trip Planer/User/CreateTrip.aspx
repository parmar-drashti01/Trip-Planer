<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateTrip.aspx.cs" Inherits="Trip_Planer.User.CreateTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .trip-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .trip-container {
            max-width: 900px;
            margin: auto;
        }

        .trip-title {
            text-align: center;
            color: #1f4e5f;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .trip-subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .trip-box {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            color: #333;
            font-weight: 600;
            margin-bottom: 7px;
        }

        .trip-input,
        .trip-select {
            width: 100%;
            height: 45px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
            background: white;
        }

            .trip-input:focus,
            .trip-select:focus {
                border-color: #1f8a9e;
                outline: none;
                box-shadow: 0 0 5px rgba(31,138,158,0.20);
            }

        .trip-textarea {
            width: 100%;
            min-height: 100px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
            resize: vertical;
        }

        .create-btn {
            width: 100%;
            height: 46px;
            border: none;
            border-radius: 8px;
            background: #1f8a9e;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 5px;
        }

            .create-btn:hover {
                background: #176d7d;
            }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 18px;
            color: #1f8a9e;
            text-decoration: none;
            font-weight: 600;
        }

            .back-link:hover {
                text-decoration: underline;
            }

        @media(max-width: 700px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 0;
            }

            .trip-box {
                padding: 25px 20px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="trip-page">

        <div class="trip-container">

            <h2 class="trip-title">Create Your Trip</h2>

            <p class="trip-subtitle">
                Plan your next journey with Trip Planner
           
            </p>

            <div class="trip-box">

                <div class="form-group">

                    <label class="form-label">Trip Name</label>

                    <asp:TextBox ID="txtTripName" runat="server" CssClass="trip-input" placeholder="Enter trip name" OnTextChanged="txtTripName_TextChanged"></asp:TextBox>

                </div>


                <div class="form-group">

                    <label class="form-label">Destination</label>

                    <asp:TextBox ID="txtDestination" runat="server"
                        CssClass="trip-input"
                        placeholder="Enter your destination">
                    </asp:TextBox>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label class="form-label">
                            Start Date
                       
                        </label>

                        <asp:TextBox ID="txtStartDate"
                            runat="server"
                            CssClass="trip-input"
                            TextMode="Date">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            End Date
                       
                        </label>

                        <asp:TextBox ID="txtEndDate"
                            runat="server"
                            CssClass="trip-input"
                            TextMode="Date">
                        </asp:TextBox>

                    </div>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label class="form-label">
                            Number of Travellers
                       
                        </label>

                        <asp:TextBox ID="txtTravellers"
                            runat="server"
                            CssClass="trip-input"
                            TextMode="Number"
                            placeholder="Enter number of travellers">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Trip Type
                       
                        </label>

                        <asp:DropDownList ID="ddlTripType"
                            runat="server"
                            CssClass="trip-select">

                            <asp:ListItem Text="Select Trip Type"
                                Value="">
                            </asp:ListItem>

                            <asp:ListItem Text="Adventure"
                                Value="Adventure">
                            </asp:ListItem>

                            <asp:ListItem Text="Family"
                                Value="Family">
                            </asp:ListItem>

                            <asp:ListItem Text="Solo"
                                Value="Solo">
                            </asp:ListItem>

                            <asp:ListItem Text="Couple"
                                Value="Couple">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>


                <div class="form-group">

                    <label class="form-label">
                        Budget
                   
                    </label>

                    <asp:TextBox ID="txtBudget"
                        runat="server"
                        CssClass="trip-input"
                        TextMode="Number"
                        placeholder="Enter your estimated budget">
                    </asp:TextBox>

                </div>


                <div class="form-group">

                    <label class="form-label">
                        Notes / Requirements
                   
                    </label>

                    <asp:TextBox ID="txtNotes"
                        runat="server"
                        CssClass="trip-textarea"
                        TextMode="MultiLine"
                        placeholder="Enter any special requirements or notes">
                    </asp:TextBox>

                </div>


                <asp:Button ID="btnCreateTrip"
                    runat="server"
                    Text="Create Trip"
                    CssClass="create-btn" OnClick="btnCreateTrip_Click" />


                <a href="UserHome.aspx"
                    class="back-link">← Back to User Home
                </a>

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
