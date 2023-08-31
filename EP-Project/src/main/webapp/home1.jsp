<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<link rel="stylesheet" href="styles/style.css">
</head>
<body>
<jsp:include page="navlogout.jsp"/>
<main>
  <div class="intro">
    <h1>Student Teacher Management System</h1>
    <p>I am a web developer and I love to create websites.</p>
    <button>Learn More</button>
  </div>
  <div class="achievements">
    <div class="work">
      <i class="fas fa-atom"></i>
      <p class="work-heading">Projects</p>
      <p class="work-text">I have worked on many projects and I am very proud of them. I am a very good developer and I am always looking for new projects.</p>
    </div>
    <div class="work">
      <i class="fas fa-skiing"></i>
      <p class="work-heading">Skills</p>
      <p class="work-text">I have a lot of skills and I am very good at them. I am very good at programming and I am always looking for new skills.</p>
    </div>
    <div class="work">
      <i class="fas fa-ethernet"></i>
      <p class="work-heading">Network</p>
      <p class="work-text">I have a lot of network skills and I am very good at them. I am very good at networking and I am always looking for new network skills.</p>
    </div>
  </div>
  <div class="about-me">
    <div class="about-me-text">
      <h2>About Me</h2>
      <p>In a university setting, the flow of knowledge and the pursuit of academic excellence are fueled by the dynamic interaction between students and faculty members. Students are the vibrant pillars of a university, representing a diverse community of learners, dreamers, and future leaders. They come from various backgrounds, cultures, and disciplines, converging in pursuit of education and personal growth.

Each student brings their unique experiences, perspectives, and aspirations, enriching the intellectual tapestry of the university. They embark on their educational journey, guided by their curiosity and the desire to acquire knowledge and skills in their chosen fields of study. Whether they are undergraduates, graduates, or doctoral candidates, students are the driving force behind the educational ecosystem of a university.

Supporting and nurturing these students are the dedicated faculty members, who serve as mentors, guides, and facilitators of learning. Faculty members embody expertise and scholarly achievements in their respective disciplines. They engage students in thought-provoking lectures, seminars, and discussions, encouraging critical thinking, analytical skills, and creative exploration. Through their commitment to teaching, research, and community service, faculty members shape the intellectual landscape of the university.</p>
    </div>
    <img src="https://images.unsplash.com/photo-1596495578065-6e0763fa1178?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80" alt="me">
  </div>
</main>

<footer class="footer">
  <div class="copy">&copy; 2023 Developer</div>
  <div class="bottom-links">
    <div class="links">
      <span>More Info</span>
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Contact</a>
    </div>
    <div class="links">
      <span>Social Links</span>
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
</footer>

</body>
</html>