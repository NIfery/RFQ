<%@page import="com.quiz.model.QuizDAO"%>
<%@page import="com.quiz.model.QuizService"%>
<%@page import="com.quiz.model.QuizVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	QuizVO vo = new QuizVO();
	QuizService qs = new QuizService();
	QuizDAO dao = new QuizDAO();
	
	String category = request.getParameter("category");
	String level = request.getParameter("level");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>퀴즈를 풀어봅시다</title>
        <link rel="stylesheet" href="stylesheet.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">



    </head>
    
    <body>
        <div id="wrapper">
        <nav>
        <ul>
            <li><a href="../../index.jsp">HOME</a></li>
            <li><a href="mailto:digvijayrn786@gmail.com" class="mail">Contact Us</a></li>
        </ul>
        </nav>
            <div id="form-box">
                <form>
                    <%-- <a href="../listQuiz.jsp?category=<%=category %>&level=<%=level %>" class="choose-lang">퀴즈 시작!</a> --%>
                   <a href="#lb3" class="choose-lang">퀴즈 시작!</a>
                    </form>
            </div>    
        </div>
        
        <div class="quiz">
            
            <div id="info">
                <div id="score">Score: 0</div>
                <div id="ques-left">Question:1/20</div>
            </div>
            <div id="ques-view">
               
            </div>
            <div class="question">
            <h1>Question</h1>
            </div>
            
            <div class="choice">
                <div class="options"><input type="radio" name="options" value="option1" id="opt0"><label for="opt0" id="lb0">Option1</label></div>
                <div class="options"><input type="radio" name="options" value="option2" id="opt1"><label for="opt1" id="lb1">Option2</label></div>
                <div class="options"><input type="radio" name="options" value="option3" checked="checked" id="opt2"><label for="opt2" id="lb2">Option3</label></div>
                <div class="options"><input type="radio" name="options" value="option4" id="opt3"><label for="opt3" id="lb3">Option4</label></div>   
            </div>

             <div class="ans-btn">
                <button type="button" class="submit-answer">Submit Answer</button>
                 <a href="#display-final-score" type="button" class="view-results">View Results</a>
            </div>
        
        </div>
        
        <div class="final-result">
            <h1>The Quiz is Over</h1>
            <div class="solved-ques-no">You Solved 10 questions of HTML</div>
            <div class="right-wrong">3 Were Right and 4 were Wrong</div>
            <div id="display-final-score">Your Final Score is: 35</div>
            <div class="remark">Remark: Satisfactory, Keep trying.</div>
            <button id="restart">Restart Quiz</button>        
        </div>
        
        <script src="../../assets/js/jquery.min.js"></script>
        <script type="text/javascript">
      //function myfunc(){
//      alert(document.getElementById("language").value);
  //}
  var countQues=0;
  var lang;
  var score=0;

  
  v
  //alert(questions.length);
  document.getElementById("score").textContent="Score : "+0;
  document.querySelector(".view-results").style.display="none";
  document.querySelector(".quiz").style.display="none";
  document.querySelector(".final-result").style.display="none";


  document.querySelector(".choose-lang").addEventListener("click",function(){
	  
	  /* ///////////////////////////// */
      lang="HTML"+"questions";
      document.getElementById("ques-left").textContent="Question : "+(countQues+1)+"/"+window[lang].length;

//      alert(window[lang].length);
      //window["anything"] will convert "anything" string to object because window is also an object
      document.querySelector(".quiz").style.display="block";
      
      document.querySelector(".question").innerHTML="<h1>"+window[lang][countQues].question+"</h1>";
       for (i=0;i<=3;i++){                     
          document.getElementById("opt"+i).value=window[lang][countQues].choices[i];
          document.getElementById("lb"+i).innerHTML=window[lang][countQues].choices[i];
          
      };/*For loop Closed*/
      
//      window.location.href="#score";

  });





  document.querySelector(".submit-answer").addEventListener("click",function(){
//       alert(window[lang][countQues].choices[window[lang][countQues].answer-1]);
//       alert(document.querySelector('input[name="options"]:checked').value);

      if(document.querySelector('input[name="options"]:checked').value===window[lang][countQues].choices[window[lang][countQues].answer-1]){
             
          score+=10;
          document.getElementById("score").textContent="Score : "+score;
          document.getElementById("ques-view").innerHTML+="<div class='ques-circle correct'>"+(countQues+1)+"</div>";
             
      }else{
      
          score-=5;
          document.getElementById("score").textContent="Score : "+score;
          document.getElementById("ques-view").innerHTML+="<div class='ques-circle incorrect'>"+(countQues+1)+"</div>";
      };
      
      if (countQues<window[lang].length-1){
          countQues++;
      }else{
          document.querySelector(".submit-answer").style.display="none";
          document.querySelector(".view-results").style.display="unset";

      }
      
      document.getElementById("ques-left").textContent="Question : "+(countQues+1)+"/"+window[lang].length;
      document.querySelector(".question").innerHTML="<h1>"+window[lang][countQues].question+"</h1>";
      for (i=0;i<=3;i++){                     
          document.getElementById("opt"+i).value=window[lang][countQues].choices[i];
          document.getElementById("lb"+i).innerHTML=window[lang][countQues].choices[i];
          
      };/*For loop Closed*/

  });

  document.querySelector(".view-results").addEventListener("click",function(){
      
      document.querySelector(".final-result").style.display="block";
      
      document.querySelector(".solved-ques-no").innerHTML="You Solved "+(countQues+1)+" questions of "+document.getElementById("language").value;
      
      var correct= document.getElementById("ques-view").getElementsByClassName("correct").length;
      
      document.querySelector(".right-wrong").innerHTML=correct+" were Right and "+((countQues+1)-correct)+" were Wrong";
      
      document.getElementById("display-final-score").innerHTML="Your Final Score is: "+score;
      
      if (correct/(countQues+1)>0.8){
          document.querySelector(".remark").innerHTML="Remark: OutStanding ! :)";
      }else if(correct/(countQues+1)>0.6){
          document.querySelector(".remark").innerHTML="Remark: Good, Keep Improving.";
      
      }else if(correct/(countQues+1)){
          document.querySelector(".remark").innerHTML="Remark: Satisfactory, Learn More.";
      }else{
          document.querySelector(".remark").innerHTML="Remark: Unsatisfactory, Try Again.";
      }
      
//      window.location.href="#display-final-score";

  });

  document.getElementById("restart").addEventListener("click",function(){
      location.reload();

  });



  /*Smooth Scroll*/


  $(document).on('click', 'a[href^="#"]', function (event) {
      event.preventDefault();

      $('html, body').animate({
          scrollTop: $($.attr(this, 'href')).offset().top
      }, 1000);
  });



  /*Smooth Scroll End*/

        </script>
    </body>

</html>
