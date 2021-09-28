<p id="notice"><%= notice %></p>

<h1>Students</h1>
<%= paginate @students %>
<%= paginate @students %>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>Branch</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @students.each do |student| %>
      <tr>
        <td><%= student.name %></td>
        <td><%= student.age %></td>
        <td><%= student.branch %></td>
        <td><%= link_to 'Show', student %></td>
        <td><%= link_to 'Edit', edit_student_path(student) %></td>
        <td><%= link_to 'Destroy', student, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Student', new_student_path %>
  <%= paginate @students %>
