<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="subCategory.aspx.cs" Inherits="Project_UI.subCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Browse Sub Category Styles */
        .browse-sub-category {
            padding: 40px 0;
            /*background-color: #f9f9f9;*/
        }

        .browse-sub-category .section-heading {
            text-align: left;
            margin-bottom: 40px;
            padding-left:7rem;
        }

        .browse-sub-category .section-heading h4 {
            /*font-size: 2rem;*/
            color: #333;
        }

        

        .browse-sub-category .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .browse-sub-category-item {
            flex: 1 1 calc(25% - 30px); /* 4 items per row with spacing */
            max-width: calc(25% - 30px);
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .browse-sub-category-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .browse-sub-category-item h4 {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 10px;
        }

        .browse-sub-category-item h5 a {
            color: #007bff;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .browse-sub-category-item h5 a:hover {
            color: #ff4757;
        }

        /* Contact a Lawyer Styles (Inactive) */
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Browse Sub Category Section -->
    <section class="browse-sub-category">
        <div class="col-lg-12"  >
            <div class="section-heading">
                <h4>Browse <em>Sub Category</em></h4>
            </div>
        </div>
        <div class="container" style="margin-top:60px">
            <asp:Repeater ID="CategoryRepeater" runat="server">
                <ItemTemplate>
                    <div class="browse-sub-category-item">
                        <h4><%# Eval("SubCategoryName") %></h4>
                        <h5><a href="#">Know More</a></h5>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>

    <!-- Contact a Lawyer Section (Inactive) -->
      <section class="services" id="services" style="margin-top:40px">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="section-heading" style="text-align:left">
                      
                      <h4 >Recommended <em>Lawyers</em></h4>
                  </div>
              </div>
              <div class="col-lg-12">
                  <div class="owl-service-item owl-carousel">
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-01.png" alt="">
                              </div>
                              <h4>Family Law Cases</h4>
                              <p>Issues related to dissolution of marriage, Child Custody and Support, Alimony and Domestic Violence.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-02.png" alt="">
                              </div>
                              <h4>Criminal Law Cases</h4>
                              <p>Cases including Dowry Harassment and Deaths, Sexual Offenses, Acid Attacks ,Online stalking, blackmail, or distribution of private material without consent.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-03.png" alt="">
                              </div>
                              <h4>Workplace Cases</h4>
                              <p>Cases seeking redress for gender pay gaps, wrongful termination due to pregnancy, maternity leave, or gender bias.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-04.png" alt="">
                              </div>
                              <h4>Property and Inheritance Cases</h4>
                              <p>Cases related to disputes over equal access to ancestral property, property ownership due to gender discrimination</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-01.png" alt="">
                              </div>
                              <h4>Reproductive and Healthcare Rights</h4>
                              <p>Cases involving the right to terminate a pregnancy, women's access to safe medical services</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-02.png" alt="">
                              </div>
                              <h4>Constitutional Rights Cases</h4>
                              <p>Cases involving gender discrimination in laws or policies, right to make personal choices like marriage, education, or dress</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-03.png" alt="">
                              </div>
                              <h4>Social Welfare and Employment Cases</h4>
                              <p>Cases related to denial of maternity leave or related entitlements, labor rights.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-04.png" alt="">
                              </div>
                              <h4>Cyber and Online Harassment Cases</h4>
                              <p>Issues related to legal action for sharing intimate content without consent, to protect against digital threats.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-01.png" alt="">
                              </div>
                              <h4>Cultural or Religious Issues</h4>
                              <p>Issues related to marriage, divorce, and inheritance under religious laws (e.g., Muslim personal law).</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-02.png" alt="">
                              </div>
                              <h4>Trafficking and Exploitation</h4>
                              <p>Cases related to illegal trafficking for labor or sexual exploitation</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-03.png" alt="">
                              </div>
                              <h4>Consumer Protection Cases</h4>
                              <p>Cases involving harm caused by unsafe beauty, healthcare, or other products marketed to women.</p>
                          </div>
                      </div>
                      <div class="item">
                          <div class="service-item">
                              <div class="icon">
                                  <img src="Images/service-icon-04.png" alt="">
                              </div>
                              <h4>Senior Women and Elder Abuse</h4>
                              <p>Cases of neglect, financial exploitation, or physical abuse of senior women , legal action for denial of pensions or retirement benefits..</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
   
</asp:Content>



