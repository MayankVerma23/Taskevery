        

        <nav class="navbar navbar-expand-lg navbar-dark" style="background: url('images/navbar-background.jpg');">
          <a class="navbar-brand" href="index.jsp"> Taskevery </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
              </li>
              
              <% if(session.getAttribute("user") != null)  { %>
              
              <li class="nav-item">
                <a class="nav-link" href="bookparking.jsp"> View All Tasks </a>
              </li>
              
              <% } %>

            </ul>
              
            <ul class="navbar-nav">
                
                <% if(session.getAttribute("user") == null) { %>
                
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp"> Login </a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary" href="signup.jsp">  Sign Up </a>
                </li>
                
                <% } else { %>
                
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary" href="Login"> Logout </a>
                </li>
                
                <% } %>
                
            </ul>
              
          </div>
        </nav>
        
        <script>
            var activeTab = localStorage.getItem('activeTab');
            if(activeTab){
                $(".navbar .nav-link").removeClass("active");
                $('.navbar .nav-item a[href="' + activeTab + '"]').addClass("active");
            }
            
            $('.navbar .nav-item').click(function(e){
                localStorage.setItem('activeTab', $(e.target).attr('href'));
            });
        </script>