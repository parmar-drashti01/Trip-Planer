
<%@ Page Title="Create Trip" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="CreateTrip.aspx.cs"
    Inherits="Trip_Planer.User.CreateTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .create-trip-page {
            min-height: 80vh;
            padding: 45px 20px;
            background: #f3f7fb;
            font-family: Arial, sans-serif;
        }

        .trip-container {
            max-width: 850px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 35px rgba(20, 55, 80, 0.12);
        }

        .trip-header {
            background: linear-gradient(135deg, #176B87, #45a6ad);
            color: white;
            text-align: center;
            padding: 35px 20px;
        }

        .trip-header h1 {
            font-size: 32px;
            margin: 0 0 12px;
            font-weight: 700;
        }

        .trip-header p {
            margin: 0;
            font-size: 15px;
            color: #eefcff;
        }

        .trip-form-body {
            padding: 35px;
        }

        .trip-section-title {
            font-size: 20px;
            color: #176B87;
            font-weight: 700;
            margin: 0 0 25px;
            padding-bottom: 12px;
            border-bottom: 1px solid #e5edf1;
        }

        .trip-form-grid {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 23px 25px;
        }

        .trip-form-group {
            display: flex;
            flex-direction: column;
            min-width: 0;
        }

        .trip-form-group.full-width {
            grid-column: 1 / -1;
        }

        .trip-form-group label {
            font-size: 14px;
            font-weight: 600;
            color: #344b5b;
            margin-bottom: 9px;
        }

        .trip-input,
        .trip-select {
            width: 100%;
            box-sizing: border-box;
            padding: 13px 14px;
            border: 1px solid #d6e1e8;
            border-radius: 9px;
            background: #fbfdff;
            color: #263b49;
            font-size: 14px;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        .trip-input:focus,
        .trip-select:focus {
            border-color: #176B87;
            box-shadow: 0 0 0 3px rgba(23, 107, 135, 0.12);
            background: #ffffff;
        }

        .trip-input::placeholder {
            color: #9aaab4;
        }

        textarea.trip-input {
            resize: vertical;
            min-height: 110px;
        }

        .trip-button-row {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        .trip-button {
            flex: 1;
            padding: 14px 20px;
            border: none;
            border-radius: 9px;
            background: #176B87;
            color: #ffffff;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            transition: background 0.2s, transform 0.2s;
        }

        .trip-button:hover {
            background: #10546c;
            transform: translateY(-2px);
        }

        .trip-reset-button {
            display: inline-block;
            padding: 14px 20px;
            border: 1px solid #cbd9e1;
            border-radius: 9px;
            background: #ffffff;
            color: #405866;
            text-decoration: none;
            text-align: center;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
        }

        .trip-reset-button:hover {
            background: #f0f6f8;
        }

        .trip-message {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-weight: 600;
            font-size: 14px;
        }

        .trip-footer-note {
            margin-top: 22px;
            text-align: center;
            color: #8797a1;
            font-size: 12px;
        }

        @media (max-width: 600px) {
            .create-trip-page {
                padding: 20px 10px;
            }

            .trip-form-body {
                padding: 22px 18px;
            }

            .trip-header {
                padding: 28px 15px;
            }

            .trip-header h1 {
                font-size: 26px;
            }

            .trip-form-grid {
                grid-template-columns: 1fr;
                gap: 18px;
            }

            .trip-form-group.full-width {
                grid-column: auto;
            }

            .trip-button-row {
                flex-direction: column;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="create-trip-page">

        <div class="trip-container">

            <div class="trip-header">
                <h1>Create Your Trip</h1>
                <p>Plan your journey, explore new places and make memories.</p>
            </div>

            <div class="trip-form-body">

                <h3 class="trip-section-title">Trip Information</h3>

                <div class="trip-form-grid">

                    <div class="trip-form-group">
                        <label>Trip Name *</label>
                        <asp:TextBox ID="txtTripName" runat="server"
                            CssClass="trip-input"
                            placeholder="e.g. Summer Vacation" />
                    </div>

                    <div class="trip-form-group">
                        <label>Destination *</label>
                        <asp:TextBox ID="txtDestination" runat="server"
                            CssClass="trip-input"
                            placeholder="e.g. Goa, Manali" />
                    </div>

                    <div class="trip-form-group">
                        <label>Start Date *</label>
                        <asp:TextBox ID="txtStartDate" runat="server"
                            CssClass="trip-input" TextMode="Date" OnTextChanged="txtStartDate_TextChanged" />
                    </div>

                    <div class="trip-form-group">
                        <label>End Date *</label>
                        <asp:TextBox ID="txtEndDate" runat="server"
                            CssClass="trip-input" TextMode="Date" />
                    </div>

                    <div class="trip-form-group">
                        <label>Number of Travellers *</label>
                        <asp:TextBox ID="txtTravellers" runat="server"
                            CssClass="trip-input" TextMode="Number"
                            placeholder="Enter number of travellers" />
                    </div>

                    <div class="trip-form-group">
                        <label>Trip Type *</label>
                        <asp:DropDownList ID="ddlTripType" runat="server"
                            CssClass="trip-select">
                            <asp:ListItem Text="Select Trip Type" Value=""></asp:ListItem>
                            <asp:ListItem Text="Solo Travel" Value="Solo"></asp:ListItem>
                            <asp:ListItem Text="Family Trip" Value="Family"></asp:ListItem>
                            <asp:ListItem Text="Friends Trip" Value="Friends"></asp:ListItem>
                            <asp:ListItem Text="Couple Trip" Value="Couple"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="trip-form-group full-width">
                        <label>Estimated Budget (₹) *</label>
                        <asp:TextBox ID="txtBudget" runat="server"
                            CssClass="trip-input"
                            placeholder="e.g. 10000" />
                    </div>

                    <div class="trip-form-group full-width">
                        <label>Additional Notes</label>
                        <asp:TextBox ID="txtNotes" runat="server"
                            CssClass="trip-input"
                            TextMode="MultiLine" Rows="4"
                            placeholder="Write your preferences or other trip details..." />
                    </div>

                </div>

                <div class="trip-button-row">

                    <asp:Button ID="btnCreateTrip" runat="server"
                        Text="Create Trip"
                        CssClass="trip-button"
                        OnClick="btnCreateTrip_Click" />

                    <asp:Button ID="btnClear" runat="server"
                        Text="Clear Form"
                        CssClass="trip-reset-button"
                        CausesValidation="false"
                        OnClientClick="clearTripForm(); return false;" />

                </div>

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="trip-message"></asp:Label>

               

            </div>

        </div>

    </div>

    <script>
        function clearTripForm() {
            document.getElementById('<%= txtTripName.ClientID %>').value = '';
            document.getElementById('<%= txtDestination.ClientID %>').value = '';
            document.getElementById('<%= txtStartDate.ClientID %>').value = '';
            document.getElementById('<%= txtEndDate.ClientID %>').value = '';
            document.getElementById('<%= txtTravellers.ClientID %>').value = '';
            document.getElementById('<%= ddlTripType.ClientID %>').selectedIndex = 0;
            document.getElementById('<%= txtBudget.ClientID %>').value = '';
            document.getElementById('<%= txtNotes.ClientID %>').value = '';
        }
    </script>

</asp:Content>
