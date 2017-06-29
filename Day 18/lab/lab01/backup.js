<% if (index.year <2000) { %>
      <h2>Your car is very old</h2>
      <% } %>
    <% if (index.year <2010 && index.year >= 2000) { %>
      <h2>Your car is old</h2>
      <% } %>
    <% if (index.year <2017 && index.year >=2010) { %>
      <h2>Your car is new</h2>
      <% } %>
    <% if (index.year >= 2017) { %>
      <h2>Your car is futuristic</h2>
      <% } %>
