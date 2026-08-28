<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Trip_Planer.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!doctype html>
    <html lang="en">

    <head>
        <title>Trips &mdash; Website Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700,900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="css/aos.css">

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


        <div class="site-wrap" id="home-section">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>



            <header class="site-navbar site-navbar-target" role="banner">

                <div class="container">
                    <div class="row align-items-center position-relative">

                        <div class="col-3 ">
                            <div class="site-logo">
                                <a href="index.html" class="font-weight-bold">
                                    <img src="images/logo.png" alt="Image" class="img-fluid">
                                </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </div>

                        <div class="col-9  text-right">


                            <span class="d-inline-block d-lg-none"><a href="#" class="text-white site-menu-toggle js-menu-toggle py-5 text-white"><span class="icon-menu h3 text-white"></span></a></span>



                            <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav ml-auto ">
                                    <li><a href="index.html" class="nav-link">Home</a></li>
                                    <li><a href="about.html" class="nav-link">About</a></li>
                                    <li><a href="trips.html" class="nav-link">Trips</a></li>
                                    <li><a href="blog.html" class="nav-link">Blog</a></li>
                                    <li class="active"><a href="contact.html" class="nav-link">Contact</a></li>
                                </ul>
                            </nav>
                        </div>


                    </div>
                </div>

            </header>

            <div class="ftco-blocks-cover-1">
                <div class="site-section-cover overlay" style="background-image: url('images/hero_1.jpg')">
                    <div class="container">
                        <div class="row align-items-center justify-content-center text-center">
                            <div class="col-md-5" data-aos="fade-up">
                                <h1 class="mb-3 text-white">Get In Touch</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta veritatis in tenetur doloremque, maiores doloribus officia iste. Dolores.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="site-section">
        <div class="container">

            <div class="row justify-content-center text-center mb-5">
                <div class="col-md-10">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop text-center">Contact</span>
                        <span class="subtitle-39191">Contact Us</span>
                        <h3>Contact Us</h3>
                    </div>
                </div>
            </div>
            <%--original template code--%>
            <%-- <div class="row">
                <div class="col-lg-8 mb-5">
                    <form action="#" method="post">
                        <div class="form-group row">
                            <div class="col-md-6 mb-4 mb-lg-0">

                                <label>First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <%-- <div class="form-group row">
                            <div class="col-md-12">
                                <textarea name="" id="msg" class="form-control" placeholder="Write your message." cols="30" rows="10" CssClass="form-control"></textarea>

                            </div>--%>
            <%--</div>
                <div class="form-group row">
                    <div class="col-md-6 mr-auto">
                        <asp:Button ID="btnRegister" runat="server" Text="Submit" class="btn btn-block btn-primary text-white py-3 px-5" OnClick="btnRegister_Click1" />
                    </div>
                    <div>
                        <asp:Label ID="lblOutput" runat="server" CssClass="text-success"></asp:Label>
                    </div>
                </div>
                </form>
            </div>
            <div class="col-lg-4 ml-auto">
                <div class="bg-white p-3 p-md-5">
                    <h3 class="text-black mb-4">Contact Info
                       
                            <ul class="list-unstyled footer-link">
                                <li class="d-block mb-3">
                                    <span class="d-block text-black">Address:</span>
                                    <span>34 Street Name, City Name Here, United States</span></li>
                                <li class="d-block mb-3"><span class="d-block text-black">Phone:</span><span>+1 242 4942 290</span></li>
                                <li class="d-block mb-3"><span class="d-block text-black">Email:</span><span>info@yourdomain.com</span></li>
                            </ul>
                </div>
            </div>
        </div>

    </div>
    </div>--%>

            <%-- <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label class="text-black" for="fname">First name</label>
                        <input type="text" class="form-control" id="fname" runat="server">
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label class="text-black" for="lname">Last name</label>
                        <input type="text" class="form-control" id="lname" runat="server">
                    </div>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Email Address</label>
                    <input type="email" id="email" runat="server" class="form-control" />
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Mobile Number</label>
                    <input type="text" id="Mobilenumber" runat="server" class="form-control" />
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Address</label>

                    <asp:TextBox ID="txtAddress" runat="server" Class="form-control" TextMode="MultiLine" Rows="4">
                    </asp:TextBox>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Profile Image</label>

                    <asp:FileUpload ID="Flpimg" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-12 text-center mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-block btn-primary text-white py-2 px-4" OnClick="btnRegister_Click" />
                </div>
                <br />
                <br />

               



            </div>

        </div>
    </div>--%>
            <!-- END .site-section -->

            <%--original template code--%>            <%-- <div class="row">
                <div class="col-lg-8 mb-5">
                    <form action="#" method="post">
                        <div class="form-group row">
                            <div class="col-md-6 mb-4 mb-lg-0">

                                <label>First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label>Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <%-- <div class="form-group row">
                            <div class="col-md-12">
                                <textarea name="" id="msg" class="form-control" placeholder="Write your message." cols="30" rows="10" CssClass="form-control"></textarea>

                            </div>--%>            <%--</div>
                <div class="form-group row">
                    <div class="col-md-6 mr-auto">
                        <asp:Button ID="btnRegister" runat="server" Text="Submit" class="btn btn-block btn-primary text-white py-3 px-5" OnClick="btnRegister_Click1" />
                    </div>
                    <div>
                        <asp:Label ID="lblOutput" runat="server" CssClass="text-success"></asp:Label>
                    </div>
                </div>
                </form>
            </div>
            <div class="col-lg-4 ml-auto">
                <div class="bg-white p-3 p-md-5">
                    <h3 class="text-black mb-4">Contact Info
                       
                            <ul class="list-unstyled footer-link">
                                <li class="d-block mb-3">
                                    <span class="d-block text-black">Address:</span>
                                    <span>34 Street Name, City Name Here, United States</span></li>
                                <li class="d-block mb-3"><span class="d-block text-black">Phone:</span><span>+1 242 4942 290</span></li>
                                <li class="d-block mb-3"><span class="d-block text-black">Email:</span><span>info@yourdomain.com</span></li>
                            </ul>
                </div>
            </div>
        </div>

    </div>
    </div>--%>

            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label class="text-black" for="fname">First name</label>
                        <input type="text" class="form-control" id="fname" runat="server">
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label class="text-black" for="lname">Last name</label>
                        <input type="text" class="form-control" id="lname" runat="server">
                    </div>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Email Address</label>
                    <input type="email" id="email" runat="server" class="form-control" />
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password">
                    </asp:TextBox>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Mobile Number</label>
                    <input type="text" id="Mobilenumber" runat="server" class="form-control" />
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Address</label>

                    <asp:TextBox ID="txtAddress" runat="server" Class="form-control" TextMode="MultiLine" Rows="4">
                    </asp:TextBox>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="text-black">Profile Image</label>

                    <asp:FileUpload ID="Flpimg" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-12 text-center mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-block btn-primary text-white py-2 px-4" OnClick="btnRegister_Click" />
                </div>
                <br />
                <asp:GridView ID="GridView" runat="server" OnRowCommand="GridView_RowCommand" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("First Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Last Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100px" Height="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmd_edt" CommandArgument='<%# Eval("Id") %>'>Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_del" CommandArgument='<%# Eval("Id") %>'>Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />



            </div>

        </div>
    </div>
    <!-- END .site-section -->



</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <footer class="site-footer bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <h2 class="footer-heading mb-3">Instagram</h2>
                    <div class="row">
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_1.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_2.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_3.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_4.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_5.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                        <div class="col-4 gal_col">
                            <a href="#">
                                <img src="images/insta_6.jpg" alt="Image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 ml-auto">
                    <div class="row">
                        <div class="col-lg-6 ml-auto">
                            <h2 class="footer-heading mb-4">Quick Links</h2>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Terms of Service</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="footer-heading mb-4">Newsletter</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt odio iure animi ullam quam, deleniti rem!</p>
                            <form action="#" class="d-flex" class="subscribe">
                                <input type="text" class="form-control mr-3" placeholder="Email">
                                <input type="submit" value="Send" class="btn btn-primary">
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <div class="border-top pt-5">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </footer>

    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>

    </body>

</html>

</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <%--<div class="site-section py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop">Story</span> <span class="subtitle-39191">Discover Story</span>
                        <h3>Our Story</h3>
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi quae expedita fugiat quo incidunt, possimus temporibus aperiam eum, quaerat sapiente.</p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos debitis enim a pariatur molestiae.</p>
                </div>
                <div class="col-md-6" data-aos="fade-right">
                    <img src="images/traveler.jpg" alt="Image" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-md-7">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop text-center">Journey</span> <span class="subtitle-39191">Journey</span>
                        <h3>Your Journey Starts Here</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$200.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Dignissimos debitis</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$390.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Consectetur adipisicing</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$180.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Temporibus aperiam</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_4.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$600.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Expedita fugiat</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_5.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$330.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Consectetur adipisicing</a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                    <div class="listing-item">
                        <div class="listing-image">
                            <img src="images/img_6.jpg" alt="Image" class="img-fluid">
                        </div>
                        <div class="listing-item-content">
                            <a class="px-3 mb-3 category bg-primary" href="#">$450.00</a>
                            <h2 class="mb-1"><a href="trip-single.html">Consectetur Amet</a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-md-10">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop text-center">Our Team</span> <span class="subtitle-39191">Amazing Staff</span>
                        <h3>Meet Our Team</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="person-29191 text-center">
                        <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-4">
                        <div class="px-4">
                            <h2 class="mb-2">John Doe</h2>
                            <p class="caption mb-4">
                                Staff</p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, maiores? Eos alias fugit eius, repudiandae molestias error</p>
                            <div class="social_29128 mt-5">
                                <a href="#"><span class="icon-facebook"></span></a><a href="#"><span class="icon-instagram"></span></a><a href="#"><span class="icon-twitter"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="person-29191 text-center">
                        <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-4">
                        <div class="px-4">
                            <h2 class="mb-2">Jean Doe</h2>
                            <p class="caption mb-4">
                                Staff</p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, maiores? Eos alias fugit eius, repudiandae molestias error</p>
                            <div class="social_29128 mt-5">
                                <a href="#"><span class="icon-facebook"></span></a><a href="#"><span class="icon-instagram"></span></a><a href="#"><span class="icon-twitter"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="person-29191 text-center">
                        <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-4">
                        <div class="px-4">
                            <h2 class="mb-2">Claire Dormey</h2>
                            <p class="caption mb-4">
                                Staff</p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, maiores? Eos alias fugit eius, repudiandae molestias error</p>
                            <div class="social_29128 mt-5">
                                <a href="#"><span class="icon-facebook"></span></a><a href="#"><span class="icon-instagram"></span></a><a href="#"><span class="icon-twitter"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-md-10">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop text-center">Testimonials</span> <span class="subtitle-39191">Testimony</span>
                        <h3>Happy Customers</h3>
                    </div>
                </div>
            </div>
            <div class="owl-carousel slide-one-item">
                <div class="row">
                    <div class="col-md-6">
                        <div class="testimonial-39191 d-flex">
                            <div class="mr-4">
                                <img src="images/person_1.jpg" alt="Image" class="img-fluid">
                            </div>
                            <div>
                                <blockquote>
                                    &ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, accusamus, facilis! Placeat praesentium alias porro aperiam facilis accusantium veniam?&rdquo;</blockquote>
                                <p>
                                    &mdash; John Doe</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="testimonial-39191 d-flex">
                            <div class="mr-4">
                                <img src="images/person_2.jpg" alt="Image" class="img-fluid">
                            </div>
                            <div>
                                <blockquote>
                                    &ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, accusamus, facilis! Placeat praesentium alias porro aperiam facilis accusantium veniam?&rdquo;</blockquote>
                                <p>
                                    &mdash; John Doe</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="testimonial-39191 d-flex">
                            <div class="mr-4">
                                <img src="images/person_1.jpg" alt="Image" class="img-fluid">
                            </div>
                            <div>
                                <blockquote>
                                    &ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, accusamus, facilis! Placeat praesentium alias porro aperiam facilis accusantium veniam?&rdquo;</blockquote>
                                <p>
                                    &mdash; John Doe</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="testimonial-39191 d-flex">
                            <div class="mr-4">
                                <img src="images/person_2.jpg" alt="Image" class="img-fluid">
                            </div>
                            <div>
                                <blockquote>
                                    &ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, accusamus, facilis! Placeat praesentium alias porro aperiam facilis accusantium veniam?&rdquo;</blockquote>
                                <p>
                                    &mdash; John Doe</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-md-10">
                    <div class="heading-39101 mb-5">
                        <span class="backdrop text-center">Blog</span> <span class="subtitle-39191">Updates</span>
                        <h3>Our Blog</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="post-entry-1 h-100">
                        <a href="single.html">
                        <img src="images/img_1.jpg" alt="Image"
                                            class="img-fluid"> </a>&nbsp;<div class="post-entry-1-contents">
                            <h2><a href="single.html">Lorem ipsum dolor sit amet</a></h2>
                            <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="post-entry-1 h-100">
                        <a href="single.html">
                        <img src="images/img_2.jpg" alt="Image"
                                            class="img-fluid"> </a>&nbsp;<div class="post-entry-1-contents">
                            <h2><a href="single.html">Lorem ipsum dolor sit amet</a></h2>
                            <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="post-entry-1 h-100">
                        <a href="single.html">
                        <img src="images/img_3.jpg" alt="Image"
                                            class="img-fluid"> </a>&nbsp;<div class="post-entry-1-contents">
                            <h2><a href="single.html">Lorem ipsum dolor sit amet</a></h2>
                            <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section bg-image overlay" style="background-image: url('images/hero_1.jpg')">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7 text-center">
                    <h2 class="font-weight-bold text-white">Join and Trip With Us</h2>
                    <p class="text-white">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus ut, doloremque quo molestiae nesciunt officiis veniam, beatae dignissimos!</p>
                    <p class="mb-0">
                        <a href="#" class="btn btn-primary text-white py-3 px-4">Get In Touch</a></p>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>

