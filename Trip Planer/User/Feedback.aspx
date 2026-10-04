<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Trip_Planer.User.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .feedback-page {
            min-height: 75vh;
            background: #f5f9fc;
            padding: 45px 20px;
        }

        .feedback-container {
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

        .feedback-box {
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

        .feedback-input,
        .feedback-select {
            width: 100%;
            height: 45px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
            background: white;
        }

        .feedback-input:focus,
        .feedback-select:focus {
            border-color: #1f8a9e;
            outline: none;
            box-shadow: 0 0 5px rgba(31,138,158,0.20);
        }

        .feedback-textarea {
            width: 100%;
            min-height: 120px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px 13px;
            box-sizing: border-box;
            resize: vertical;
        }

        .rating {
            display: flex;
            gap: 10px;
            font-size: 25px;
        }

        .submit-btn {
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

        .submit-btn:hover {
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

        @media(max-width: 600px) {
            .feedback-box {
                padding: 25px 20px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="feedback-page">

        <div class="feedback-container">

            <h2 class="page-title">
                Give Feedback
            </h2>

            <p class="page-subtitle">
                Share your experience with Trip Planner
            </p>


            <div class="feedback-box">

                <div class="form-group">

                    <label class="form-label">
                        Trip
                    </label>

                    <asp:DropDownList ID="ddlTrip"
                        runat="server"
                        CssClass="feedback-select">

                        <asp:ListItem Text="Select Trip"
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem Text="Goa Trip"
                            Value="Goa">
                        </asp:ListItem>

                        <asp:ListItem Text="Manali Trip"
                            Value="Manali">
                        </asp:ListItem>

                        <asp:ListItem Text="Kerala Trip"
                            Value="Kerala">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <div class="form-group">

                    <label class="form-label">
                        Rating
                    </label>

                    <div class="rating">
                        ⭐ ⭐ ⭐ ⭐ ⭐
                    </div>

                </div>


                <div class="form-group">

                    <label class="form-label">
                        Your Feedback
                    </label>

                    <asp:TextBox ID="txtFeedback"
                        runat="server"
                        CssClass="feedback-textarea"
                        TextMode="MultiLine"
                        placeholder="Write your feedback here...">
                    </asp:TextBox>

                </div>


                <asp:Button ID="btnSubmit"
                    runat="server"
                    Text="Submit Feedback"
                    CssClass="submit-btn" />


                <a href="UserHome.aspx"
                    class="back-link">
                    ← Back to User Home
                </a>

            </div>

        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
