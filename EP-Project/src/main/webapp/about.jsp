<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>
<jsp:include page="navlogout.jsp"></jsp:include>
<div class="about-section">
  <h1>About Us Page</h1>
  <p>In a university setting, the flow of knowledge and the pursuit of academic excellence are fueled by the dynamic interaction between students and faculty members. Students are the vibrant pillars of a university, representing a diverse community of learners, dreamers, and future leaders. They come from various backgrounds, cultures, and disciplines, converging in pursuit of education and personal growth.</p>
  <p>Each student brings their unique experiences, perspectives, and aspirations, enriching the intellectual tapestry of the university. They embark on their educational journey, guided by their curiosity and the desire to acquire knowledge and skills in their chosen fields of study. Whether they are undergraduates, graduates, or doctoral candidates, students are the driving force behind the educational ecosystem of a university.</p>
  <p>Supporting and nurturing these students are the dedicated faculty members, who serve as mentors, guides, and facilitators of learning. Faculty members embody expertise and scholarly achievements in their respective disciplines. They engage students in thought-provoking lectures, seminars, and discussions, encouraging critical thinking, analytical skills, and creative exploration. Through their commitment to teaching, research, and community service, faculty members shape the intellectual landscape of the university.</p>
  <p>Moreover, the relationship between students and faculty extends beyond the classroom. Faculty members serve as mentors, providing guidance and support to students in their academic pursuits, research endeavors, and career development. They foster an environment of collaboration and intellectual discourse, cultivating a deep sense of intellectual curiosity among students.</p>
  <p>In summary, the dynamic interplay between students and faculty members forms the foundation of a thriving academic community in a university. Students bring their diverse backgrounds and aspirations, while faculty members provide knowledge, mentorship, and research opportunities. Together, they create an environment conducive to intellectual growth, personal development, and the pursuit of excellence.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="C:\Users\HP\OneDrive\Pictures\IMG_20200720_082233.jpg" alt="2100030800" style="width:100%">
      <div class="container">
        <h2>Hemanth</h2>
        <p class="title">Team Member</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>pernihemanth8@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="/images/photo_2023-07-23_10-42-02.jpg" alt="2100030412" style="width:100%">
      <div class="container">
        <h2> Noor Mohammed Khan</h2>
        <p class="title">Team Leader</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>pathan.nmk1493@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/images/siva.jpg" alt="2100031019" style="width:100%">
      <div class="container">
        <h2>Siva Shankar</h2>
        <p class="title">Team Memeber</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>siva@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>