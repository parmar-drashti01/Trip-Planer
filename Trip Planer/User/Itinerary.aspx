
<%@ Page Title="My Itinerary" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Itinerary.aspx.cs"
    Inherits="Trip_Planer.User.Itinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .itinerary-page {
            min-height: 80vh;
            padding: 40px 20px;
            background: #f3f7fb;
            font-family: Arial, sans-serif;
        }

        .itinerary-container {
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
        }

        .itinerary-title {
            color: #176B87;
            text-align: center;
            margin-bottom: 10px;
        }

        .itinerary-subtitle {
            text-align: center;
            color: #71808a;
            margin-bottom: 30px;
        }

        .itinerary-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 20px;
        }

        .itinerary-group {
            display: flex;
            flex-direction: column;
        }

        .itinerary-group label {
            margin-bottom: 8px;
            font-weight: 600;
            color: #344b5b;
        }

        .itinerary-input {
            width: 100%;
            box-sizing: border-box;
            padding: 12px;
            border: 1px solid #d6e1e8;
            border-radius: 8px;
            font-size: 14px;
        }

        .itinerary-full {
            grid-column: 1 / -1;
        }

        .itinerary-button {
            margin-top: 22px;
            padding: 13px 22px;
            border: none;
            border-radius: 8px;
            background: #176B87;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        .itinerary-button:hover {
            background: #10546c;
        }

        .itinerary-message {
            display: block;
            margin: 15px 0;
            font-weight: bold;
        }

        .itinerary-table {
            width: 100%;
            margin-top: 25px;
            border-collapse: collapse;
        }

        .itinerary-table th {
            background: #176B87;
            color: white;
            padding: 12px;
        }

        .itinerary-table td {
            padding: 12px;
            border: 1px solid #e1e8ed;
        }

        @media (max-width: 600px) {
            .itinerary-grid {
                grid-template-columns: 1fr;
            }

            .itinerary-full {
                grid-column: auto;
            }

            .itinerary-container {
                padding: 18px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="itinerary-page">
        <div class="itinerary-container">

            <h1 class="itinerary-title">My Travel Itinerary</h1>

            <p class="itinerary-subtitle">
                Plan your trip day by day and organize your activities.
            </p>

            <div class="itinerary-grid">

                <div class="itinerary-group itinerary-full">
                    <label>Select Trip *</label>

                    <asp:DropDownList ID="ddlTrip" runat="server"
                        CssClass="itinerary-input"
                        AutoPostBack="true"
                        OnSelectedIndexChanged="ddlTrip_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>

                <div class="itinerary-group">
                    <label>Day Number *</label>

                    <asp:TextBox ID="txtDayNo" runat="server"
                        CssClass="itinerary-input"
                        TextMode="Number"
                        placeholder="e.g. 1" />
                </div>

                <div class="itinerary-group">
                    <label>Day Title *</label>

                    <asp:TextBox ID="txtDayTitle" runat="server"
                        CssClass="itinerary-input"
                        placeholder="e.g. Beach Exploration" />
                </div>

                <div class="itinerary-group">
                    <label>Activity Time *</label>

                    <asp:TextBox ID="txtActivityTime" runat="server"
                        CssClass="itinerary-input"
                        placeholder="e.g. 10:00 AM" />
                </div>

                <div class="itinerary-group">
                    <label>Activity *</label>

                    <asp:TextBox ID="txtActivity" runat="server"
                        CssClass="itinerary-input"
                        placeholder="e.g. Visit Baga Beach" />
                </div>

            </div>

            <asp:Button ID="btnAddActivity" runat="server"
                Text="Add Activity"
                CssClass="itinerary-button"
                OnClick="btnAddActivity_Click" />

            <asp:Label ID="lblMessage" runat="server"
                CssClass="itinerary-message"></asp:Label>

            <h2 class="itinerary-title">Your Activities</h2>

            <asp:GridView ID="gvItinerary" runat="server"
                AutoGenerateColumns="False"
                CssClass="itinerary-table"
                EmptyDataText="No activities added yet.">

                <Columns>
                    <asp:BoundField DataField="Day_No" HeaderText="Day" />
                    <asp:BoundField DataField="Day_Title" HeaderText="Day Title" />
                    <asp:BoundField DataField="Activity_Time" HeaderText="Time" />
                    <asp:BoundField DataField="Activity" HeaderText="Activity" />
                </Columns>

            </asp:GridView>

        </div>
    </div>

</asp:Content>
