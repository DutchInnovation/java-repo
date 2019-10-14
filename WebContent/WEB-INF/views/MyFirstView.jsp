
	<%=request.getAttribute("cat") %>
	Filter (get parameter): <%=request.getParameter("cat") %>
	<% out.println("Get parameter in Servlet: " + request.getParameter("cat")); %>
