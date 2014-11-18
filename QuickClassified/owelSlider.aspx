<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"  CodeBehind="owelSlider.aspx.cs" Inherits="QuickClassified.owelSlider" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/owlslider/bootstrapTheme.css" rel="stylesheet" />
    <link href="Styles/owlslider/custom.css" rel="stylesheet" />
    <link href="Styles/owlslider/owl.carousel.css" rel="stylesheet" />
    <link href="Styles/owlslider/owl.theme.css" rel="stylesheet" />
    <link href="Styles/owlslider/prettify.css" rel="stylesheet" /> 
    <script src="Scripts/owlSlider/owl.carousel.min.js"></script>
    <script>

        $(document).ready(function ($) {
            //$("#owl-example").owlCarousel();
            $("#owl-example").owlCarousel({
                autoPlay: 1000,
                stopOnHover: true
            });
        });
    </script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent" >
    <div id="demo">
        <div class="container">
        

          <div class="row">
            <div class="span12">

              <div id="owl-example" class="owl-carousel">

                <div class="item darkCyan">
                  <img src="images/owlslider/demo-slides/touch.png" alt="" />
                    <h3>Touch</h3>
                    <h4>Can touch this</h4>
                </div>

                <div class="item forestGreen">
                  <img src="images/owlslider/demo-slides/grab.png" alt="Grab">
                    <h3>Grab</h3>
                    <h4>Can grab this</h4>
                </div>

                <div class="item orange">
                  <img src="images/owlslider/demo-slides/responsive.png" alt="Responsive">
                    <h3>Responsive</h3>
                    <h4>Fully responsive!</h4>
                </div>

                <div class="item yellow">
                  <img src="images/owlslider/demo-slides/css3.png" alt="CSS3">
                    <h3>CSS3</h3>
                    <h4>3D Acceleration.</h4>
                </div>

                <div class="item dodgerBlue">
                  <img src="images/owlslider/demo-slides/multi.png" alt="Multi">
                    <h3>Multiply</h3>
                    <h4>Owls on page.</h4>
                </div>

                <div class="item skyBlue">
                  <img src="images/owlslider/demo-slides/modern.png" alt="Modern Browsers">
                    <h3>Modern</h3>
                    <h4>Browsers Compatibility</h4>
                </div>

                <div class="item zombieGreen">
                  <img src="images/owlslider/demo-slides/zombie.png" alt="Zombie Browsers - old ones">
                    <h3>Zombie</h3>
                    <h4>Browsers Compatibility</h4>
                </div>

                <div class="item violet">
                  <img src="images/owlslider/demo-slides/controls.png" alt="Take Control">
                    <h3>Take Control</h3>
                    <h4>The way you like</h4>
                </div>

                <div class="item yellowLight">
                  <img src="images/owlslider/demo-slides/feather.png" alt="Light">
                    <h3>Light</h3>
                    <h4>As a feather</h4>
                </div>

                <div class="item steelGray">
                  <img src="images/owlslider/demo-slides/tons.png" alt="Tons of Opotions">
                    <h3>Tons</h3>
                    <h4>of options</h4>
                </div><div class="item darkCyan">
                  <img src="images/owlslider/demo-slides/touch.png" alt="Touch">
                    <h3>Touch</h3>
                    <h4>Can touch this</h4>
                </div>

                <div class="item forestGreen">
                  <img src="images/owlslider/demo-slides/grab.png" alt="Grab">
                    <h3>Grab</h3>
                    <h4>Can grab this</h4>
                </div>

                <div class="item orange">
                  <img src="images/owlslider/demo-slides/responsive.png" alt="Responsive">
                    <h3>Responsive</h3>
                    <h4>Fully responsive!</h4>
                </div>

                <div class="item yellow">
                  <img src="images/owlslider/demo-slides/css3.png" alt="CSS3">
                    <h3>CSS3</h3>
                    <h4>3D Acceleration.</h4>
                </div>

                <div class="item dodgerBlue">
                  <img src="images/owlslider/demo-slides/multi.png" alt="Multi">
                    <h3>Multiply</h3>
                    <h4>Owls on page.</h4>
                </div>

                <div class="item skyBlue">
                  <img src="images/owlslider/demo-slides/modern.png" alt="Modern Browsers">
                    <h3>Modern</h3>
                    <h4>Browsers Compatibility</h4>
                </div>

                <div class="item zombieGreen">
                  <img src="images/owlslider/demo-slides/zombie.png" alt="Zombie Browsers - old ones">
                    <h3>Zombie</h3>
                    <h4>Browsers Compatibility</h4>
                </div>

                <div class="item violet">
                  <img src="images/owlslider/demo-slides/controls.png" alt="Take Control">
                    <h3>Take Control</h3>
                    <h4>The way you like</h4>
                </div>

                <div class="item yellowLight">
                  <img src="images/owlslider/demo-slides/feather.png" alt="Light">
                    <h3>Light</h3>
                    <h4>As a feather</h4>
                </div>

                <div class="item steelGray">
                  <img src="images/owlslider/demo-slides/tons.png" alt="Tons of Opotions">
                    <h3>Tons</h3>
                    <h4>of options</h4>
                </div>

              </div>


            </div>
          </div>

        </div>
      </div>
</asp:Content>
  