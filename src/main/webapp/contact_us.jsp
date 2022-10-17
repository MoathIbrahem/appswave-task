<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="./css/appswave.css" rel="stylesheet">
<link href="./css/intlTelInput.css" rel="stylesheet">
<script src="./js/intlTelInput.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<% if(request.getParameter("error") != null){ %>
    <div id= "error" class='<%= request.getParameter("error").equals("true")  ? "alertMsgDiv" : "successMsgDiv"%>'  role="alert"><%=request.getParameter("message")%></div>

<% } %>


      <header>
        <h1>Fill the Form to reach out us</h1>
      </header>
      <main>
        <section class="content">
          <legend>We usually reply in 3 Working Days</legend>
          <form action="ContactDetails" method="POST">
            <div class="form-control">
              <label for="fullName">Full Name*</label>
              <input
                type="text"
                name="fullName"
                id="fullName"
                placeholder="Ahmed Mohammad"
                required
              />
            </div>
            <div class="form-group">
              <div class="form-control">
                <label for="phoneNumber">Mobile Number*</label>
                <input
                  type="tel"
                  name="phoneNumber"
                  id="phone"
                  placeholder="Phone Number"
                  class="phoneNumber"
                  required
                />
                <div>
	                <span id="valid-msg" class=iti__hide>Valid</span>
					<span id="error-msg" class="iti__hide"></span>
				</div>
              </div>
              <div class="form-control">
                <label for="email">Email ID*</label>
                <input
                  type="email"
                  name="email"
                  id="email"
                  placeholder="email@example.com"
                  required
                />
              </div>
            </div>
            <div class="form-control">
              <label for="address">Address*</label>
              <textarea
                name="address"
                id="address"
                rows="4"
                placeholder="Write something"
                required
              ></textarea>
            </div>
            <div class="form-control">
              <label for="subject">Subject*</label>
              <input
                type="text"
                name="subject"
                id="subject"
                placeholder="Write something"
                required
              />
            </div>
            <div class="form-group">
              <div class="form-control">
                <label for="typeOfInquiry">Type of Inquiry*</label>
                <input
                  type="text"
                  name="typeOfInquiry"
                  id="typeOfInquiry"
                  placeholder="Write something"
                  required
                />
              </div>
              <div class="form-control">
                <label for="contact">Contact*</label>
                <input type="text" name="contact" id="contact" required />
              </div>
            </div>
            <div class="form-control">
              <label for="moreInformation">More Information*</label>
              <textarea
                name="moreInformation"
                id="moreInformation"
                rows="4"
                placeholder="Write something"
                required
              ></textarea>
            </div>
            <div class="form-control">
              <label>Region</label>
              <div class="checkbox-group">
                <div class="form-control">
                  <input type="checkbox" id="region_DFe" name="region" value="dfe" checked />
                  <label for="dfe">DFe</label>
                </div>
                <div class="form-control">
                  <input type="checkbox" id="region_ABc" name="region" value="abc" />
                  <label for="abc">ABc</label>
                </div>
                <div class="form-control">
                  <input type="checkbox" id="region_EFc" name="region" value="efc" />
                  <label for="efc">EFc</label>
                </div>
                <div class="form-control">
                  <input type="checkbox" id="region_ADs" name="region" value="ads" />
                  <label for="ads">ADs</label>
                </div>
                <div class="form-control">
                  <input type="checkbox" id="region_BDr" name="region" value="bdr" />
                  <label for="bdr">BDr</label>
                </div>
              </div>
            </div>
            <button type="submit">Submit</button>
          </form>
        </section>
        <section class="sidebar">
          <h4>Support</h4>
          <div class="info">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z"
                />
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z"
                />
              </svg>
            </div>
            <p>
              lorem ipsum dolor sit amet consectetur adipiscing elit sed do
              eiusmod tempor incididunt ut labore
            </p>
          </div>
          <div class="info">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 002.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 01-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 00-1.091-.852H4.5A2.25 2.25 0 002.25 4.5v2.25z"
                />
              </svg>
            </div>
            <p>12743004</p>
          </div>
          <div class="info">
            <div class="icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75"
                />
              </svg>
            </div>
            <p>info@example.com</p>
          </div>
        </section>
      </main>

<script src="./js/appswave.js"></script>
</body>

</html>