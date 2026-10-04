<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddItinerary.aspx.cs" Inherits="Trip_Planer.User.AddItinerary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <style>
            .itinerary-page {
                min-height: 75vh;
                background: #f5f9fc;
                padding: 45px 20px;
            }

            .itinerary-container {
                max-width: 700px;
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
                padding: 35px;
                border-radius: 15px;
                box-shadow: 0 5px 20px rgba(0,0,0,0.08);
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

            .input {
                width: 100%;
                height: 45px;
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 10px 13px;
                box-sizing: border-box;
            }

            .textarea {
                width: 100%;
                min-height: 100px;
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 10px 13px;
                box-sizing: border-box;
            }

            .save-btn {
                width: 100%;
                height: 46px;
                border: none;
                border-radius: 8px;
                background: #1f8a9e;
                color: white;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
            }

                .save-btn:hover {
                    background: #176d7d;
                }

            .back-btn {
                display: block;
                text-align: center;
                margin-top: 18px;
                color: #1f8a9e;
                text-decoration: none;
                font-weight: 600;
            }
        </style>


        <div class="itinerary-page">

            <div class="itinerary-container">

                <h2 class="page-title">Add Itinerary
                </h2>

                <p class="page-subtitle">
                    Add activities for your trip
                </p>

                <div class="itinerary-box">

                    <div class="form-group">

                        <label class="form-label">
                            Day Number
                        </label>

                        <asp:TextBox ID="txtDayNo"
                            runat="server"
                            CssClass="input"
                            TextMode="Number"
                            placeholder="Enter day number">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Day Title
                        </label>

                        <asp:TextBox ID="txtDayTitle"
                            runat="server"
                            CssClass="input"
                            placeholder="Example: Mumbai Sightseeing" OnTextChanged="txtDayTitle_TextChanged">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Activity Time
                        </label>

                        <asp:TextBox ID="txtActivityTime"
                            runat="server"
                            CssClass="input"
                            placeholder="Example: 10:00 AM">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label class="form-label">
                            Activity
                        </label>

                        <asp:TextBox ID="txtActivity"
                            runat="server"
                            CssClass="textarea"
                            TextMode="MultiLine"
                            placeholder="Enter activity details">
                        </asp:TextBox>

                    </div>


                    <asp:Button ID="btnSave"
                        runat="server"
                        Text="Save Itinerary"
                        CssClass="save-btn"
                        OnClick="btnSave_Click" />


                    <a href="MyTrips.aspx" class="back-btn">← Back to My Trips
                    </a>

                </div>

            </div>

        </div>

    </form>
</body>
</html>
