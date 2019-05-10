<h1>Rails REST API - User Information</h1>

<p>The purpose of this project is the creation of an API (using the REST architecture) for the management of user information.</p>

<h2>Prerequisites</h2>
This project was built using Rails version 5.2.3 and in the Gemfile it is possible to find all gems that where used. In order to install them, run the command below in the terminal
<pre>
<code>bundle install</code>
</pre>

<h2>The User Information API</h2>
<p>In order to protect more especific information, </p>

<p> Request types for user information:</p>
<ul>
  <li><a href="#index">List all (GET)</a></li>
  <li><a href="#show">Show one (GET)</a></li>
  <li><a href="#create">Create (POST)</a></li>
  <li><a href="#edit">Edit (PUT)</a></li>
  <li><a href="#destroy">Delete (DELETE)</a></li>
</ul>

<h3 id="index">Show all instances of UserInformation</h3>
<img src="app/assets/images/getindex.png" width="800">

<h3 id="show">Show a specific UserInformation</h3>
<img src="app/assets/images/getshow.png" width="800">
<img src="app/assets/images/getshownotfound.png" width="800">

<h3 id="create">Create UserInformation</h3>
<img src="app/assets/images/postparams.png" width="800">
<img src="app/assets/images/postparamssuccess.png" width="800">

<h3 id="edit">Edit UserInformation</h3>
<img src="app/assets/images/putparams.png" width="800">
<img src="app/assets/images/putparamssuccess.png" width="800">

<h3 id="destroy">Delete UserInformation</h3>
<img src="app/assets/images/deletenotfound.png" width="800">
<img src="app/assets/images/deletesuccess.png" width="800">
