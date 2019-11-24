<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="https://fonts.googleapis.com/css?family=Yesteryear&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<title>Questionnaire</title>
		<style>
			ul {
				  list-style-type: none;
				  margin: 0;
				  padding: 0;
				  overflow: hidden;
				  background-color: #134e6d;
				}

				li {
				  float: left;
				}

				li a {
				  display: block;
				  color: white;
				  text-align: center;
				  padding: 14px 16px;
				  text-decoration: none;
				}

				li a:hover:not(.active) {
				  background-color: #111;
				}

				.active {
				  background-color: #4CAF50;
				}
			table.tableizer-table {
				font-size: 12px;
				border: 1px solid #CCC; 
				font-family: Arial, Helvetica, sans-serif;
			} 
			.tableizer-table td {
				padding: 4px;
				margin: 3px;
				border: 1px solid #CCC;
			}
			
			table.tableizertotal-table {
				font-size: 12px;
				border: 1px solid #CCC; 
				font-family: Arial, Helvetica, sans-serif;
			} 
			.tableizertotal-table td {
				padding: 20px;
				margin: 3px;
				border: 1px solid #CCC;
			}
			
			.buttonhov{
				background-color:#1b6d98;
				color:white;
			}
			
			.buttonhov:hover {
			  background: #134e6d;			
			}
			
			.cancel{
				background-color:#b41125 ;
				color: white;
			}
			
			.cancel:hover {
			  background: #cd1125 ;			
			}
			
			h1 {
				font-family: 'Yesteryear', cursive;
				font-size: 75px;
				color: #134e6d;
			}

			.divnew{
				border: 5px solid #ccc;
				
				border-radius: 4px;
			  background: #f5f0eb;
			  color: #000;
			  position: relative;
			  padding: 20px;
			  width: 400px;
			  height: 400px;
			  margin-top: 10px;
			}


			.divinstr{
				border: 5px solid #ccc;
				
				border-radius: 4px;
			  background: #f5f0eb;
			  color: #000;
			  position: relative;
			  padding: 20px;
			  width: 800px;
			  height: 165px;
			  margin-top: 10px;
			}


			/* Extra styles for the cancel button */
			.cancelbtn {
			  width: auto;
			  padding: 10px 18px;
			  background-color: #f44336;
			}

			/* Center the image and position the close button */
			.imgcontainer {
			  text-align: center;
			  margin: 24px 0 12px 0;
			  position: relative;
			}

			img.avatar {
			  width: 40%;
			  border-radius: 50%;
			}

			.container {
			  padding: 16px;
			}

			span.psw {
			  float: right;
			  padding-top: 16px;
			}

			/* The Modal (background) */
			.modal {
			  display: none; /* Hidden by default */
			  position: fixed; /* Stay in place */
			  z-index: 1; /* Sit on top */
			  left: 0;
			  top: 0;
			  width: 100%; /* Full width */
			  height: 100%; /* Full height */
			  overflow: auto; /* Enable scroll if needed */
			  background-color: rgb(0,0,0); /* Fallback color */
			  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			  padding-top: 60px;
			}

			/* Modal Content/Box */
			.modal-content {
			  background-color: #fefefe;
			  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
			  border: 1px solid #888;
			  width: 80%; /* Could be more or less, depending on screen size */
			}

			/* The Close Button (x) */
			.close {
			  position: absolute;
			  right: 25px;
			  top: 0;
			  color: #000;
			  font-size: 35px;
			  font-weight: bold;
			}

			.close:hover,
			.close:focus {
			  color: red;
			  cursor: pointer;
			}

			/* Add Zoom Animation */
			.animate {
			  -webkit-animation: animatezoom 0.6s;
			  animation: animatezoom 0.6s
			}

			@-webkit-keyframes animatezoom {
			  from {-webkit-transform: scale(0)} 
			  to {-webkit-transform: scale(1)}
			}
			  
			@keyframes animatezoom {
			  from {transform: scale(0)} 
			  to {transform: scale(1)}
			}

			/* Change styles for span and cancel button on extra small screens */
			@media screen and (max-width: 300px) {
			  span.psw {
			     display: block;
			     float: none;
			  }
			  .cancelbtn {
			     width: 100%;
			  }
			}
		</style>
	</head>
	<body>
		<script type="text/javascript">
			var x1=0, x2=0, x3=0, x4=0, y1=0, y2=0, y3=0, y4=0;
			var combined1, combined2,combined3,combined4;
		</script>
		<ul>
		  <li style="float:right"><a href="userlogout.jsp">logout</a></li>
		  <li style="float:right"><p style="color:white" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Change ID</p></li>  
		</ul>
		<center>
			<div id="id01" class="modal">		  
			  <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px;">
					<form class="w3-container" action="useridchange.jsp" method="post">
						<div class="w3-section">
						  <label><b>Username</b></label>
						  <br>
						  <input class="w3-input w3-border w3-margin-bottom" style="width: 75%;   padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px; type="text" placeholder="Enter Username:" name="usrname" required>
						  <br>
						  <label><b>Password</b></label>
						  <br>
						  <input class="w3-input w3-border" style="width: 75%;   padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px; type="password" placeholder="Enter Password:" name="passwd" required>
						  <br>
						  <label><b>New Username</b></label>
						  <br>
						  <input class="w3-input w3-border" style="width: 75%;   padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px; type="new user-name" placeholder="Enter New User-id:" name="newusername" required>
						  <br>
						  <button style="width: 75%;   padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px;" class="buttonhov" type="submit">Save</button>

						</div>
					  </form>
					  
					  <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
						<button style="width: 75%;   padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px;" onclick="document.getElementById('id01').style.display='none'" type="button" class="cancel">Cancel</button>
					  </div>

					</div>
			</div>
		</center>

		<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		</script>
		<h4>Welcome, <%=session.getAttribute("qname")%></h4>
		<center>
			<div class="divinstr">
					Directions: Each of the following rows of four words across, check the one or two words that most often apply to you. Continue through all 40 lines. If you are not sure which word best applies to you, ask your spouse or a close friend, or think of what your answer would have been when you were a child. Additionally, you may want to read the definitions that accompany the test. Next, place the total number of Xs to the corresponding box below each column. 
				</div>
			<h1> Strengths</h1>
			<h5>
				
			</h5>
			<form method="post" action="checkbox.jsp">
			<table class="tableizer-table" style="background-color:#FED8B1; text-align:center">
				<tbody>
						<!-- First row -->
						<tr style="height:20px;">
						<td class="s0">1</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="animated" value="Animated"id="011" ></td>
							<td class="st1"  id="strength1">Animated</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="adventurous" value="Adventurous" id="012" ></td>
							<td class="st2"  id="strength2">Adventurous </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="analytical" value="Analytical" id="013"></td>
							<td class="st3"  id="strength3">Analytical</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="adaptable" value="Adaptable" id="014"></td>
							<td class="st4" id="strength4">Adaptable </td>
						</tr>
						
												<!-- Second row -->
						<tr style="height:20px;">
						<td class="s0">2</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="playful" value="Playful" id="021"></td>
							<td class="st1"  id="strength5">Playful</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="persuasive" value="Persuasive" id="022"></td>
							<td class="st2"  id="strength6">Persuasive </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="persistent" value="Persistent" id="023"></td>
							<td class="st3"  id="strength7">Persistent</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="peaceful" value="Peaceful" id="024"></td>
							<td class="st4"  id="strength8">Peaceful </td>
						</tr>

						
						<!-- Third row -->
						<tr style="height:20px;"><td class="s0">3</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="sociable" value="Sociable" id="031"></td>
							<td class="st1"  id="strength9">Sociable</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="strongwilled" value="Strong willed" id="032"></td>
							<td class="st2"  id="strength10">Strong willed </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="selfsacrificing" value="Self-sacrificing" id="033"></td>
							<td class="st3"  id="strength11">Self-sacrificing</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="submissive" value="Submissive" id="034"></td>
							<td class="st4"  id="strength12">Submissive </td>
						</tr>

						
						<!-- Fourth row -->
						<tr style="height:20px;">
						<td class="s0">4</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="convincing" value="Convincing" id="041"></td>
							<td class="st1"  id="strength13">Convincing</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="competative" value="Competitive" id="042"></td>
							<td class="st2"  id="strength14">Competitive </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="considerate" value="Considerate" id="043"></td>
							<td class="st3"  id="strength15">Considerate</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="controlled" value="Controlled" id="044"></td>
							<td class="st4"  id="strength16">Controlled </td>
						</tr>
						
						<!-- Fifth row -->
						<tr style="height:20px;">
						<td class="s0">5</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="refreshing" value="Refreshing" id="051"></td>
							<td class="st1"  id="strength17">Refreshing</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="resourceful" value="Resourceful" id="052"></td>
							<td class="st2"  id="strength18">Resourceful </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="respectful" value="Respectful" id="053"></td>
							<td class="st3"  id="strength19">Respectful</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="reserved" value="Reserved" id="054"></td>
							<td class="st4"  id="strength20">Reserved </td>
						</tr>
						
						<!-- Sixth row -->
						<tr style="height:20px;">
							<td class="s0">6</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="spirited" value="Spirited" id="061"></td>
							<td class="st1"  id="strength21">Spirited</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="selfresilient" value="Self-resilient" id="062"></td>
							<td class="st2"  id="strength22">Self-resilient </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="sensitive" value="Sensitive" id="063"></td>
							<td class="st3"  id="strength23">Sensitive</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="satisfied" value="Satisfied" id="064"></td>
							<td class="st4"  id="strength24">Satisfied </td>
						</tr>
						
						<!-- Seventh row -->
						<tr style="height:20px;">
						<td class="s0">7</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="promoter" value="Promoter" id="071"></td>
							<td class="st1"  id="strength25">Promoter</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="positive" value="Positive" id="072"></td>
							<td class="st2"  id="strength26">Positive </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="planner" value="Planner" id="073"></td>
							<td class="st3"  id="strength27">Planner</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="patient" value="Patient" id="074"></td>
							<td class="st4"  id="strength28">Patient </td>
						</tr>
						
						<!-- Eigthth row -->
						<tr style="height:20px;">
						<td class="s0">8</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="spontaneous" value="Spontaneous" id="081"></td>
							<td class="st1"  id="strength29">Spontaneous</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="sure" value="Sure" id="082"></td>
							<td class="st2"  id="strength30">Sure </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="scheduled" value="Scheduled" id="083"></td>
							<td class="st3"  id="strength31">Scheduled</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="shy" value="Shy" id="084"></td>
							<td class="st4"  id="strength32">Shy </td>
						</tr>
						
						<!-- Ninth row -->
						<tr style="height:20px;">
						<td class="s0">9</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="optimistic" value="Optimistic" id="091"></td>
							<td class="st1"  id="strength33">Optimistic</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="outspoken" value="Outspoken" id="092"></td>
							<td class="st2"  id="strength34">Outspoken </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="orderly" value="Orderly" id="093"></td>
							<td class="st3"  id="strength35">Orderly</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="obliging" value="Obliging" id="094"></td>
							<td class="st4"  id="strength36">Obliging </td>
						</tr>
						
						<!-- Tenth row -->
						<tr style="height:20px;">
						<td class="s0">10</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="funny" value="Funny" id="0101"></td>
							<td class="st1"  id="strength37">Funny</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="forceful" value="Forceful" id="0102"></td>
							<td class="st2"  id="strength38">Forceful </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="faithful" value="Faithful" id="0103"></td>
							<td class="st3"  id="strength39">Faithful</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="friendly" value="Friendly" id="0104"></td>
							<td class="st4"  id="strength40">Friendly </td>
						</tr>
						
						<!-- Eleventh row -->
						<tr style="height:20px;"><td class="s0">11</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="delightful" value="Delightful" id="0111"></td>
							<td class="st1"  id="strength41">Delightful</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="daring" value="Daring" id="0112"></td>
							<td class="st2"  id="strength42">Daring </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="detailed" value="Detailed" id="0113"></td>
							<td class="st3"  id="strength43">Detailed</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="diplomatic" value="Diplomatic" id="0114"></td>
							<td class="st4"  id="strength44">Diplomatic </td>
						</tr>
						
						<!-- Twelth row -->
						<tr style="height:20px;"><td class="s0">12</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="cheerful" value="Cheerful" id="0121"></td>
							<td class="st1"  id="strength45">Cheerful</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="confident" value="Confident" id="0122"></td>
							<td class="st2"  id="strength46">Confident </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="cultured" value="Cultured" id="0123"></td>
							<td class="st3"  id="strength47">Cultured</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="consistent" value="Consistent" id="0124"></td>
							<td class="st4"  id="strength48">Consistent </td>
						</tr>
						
						<!-- Thirteenth row -->
						<tr style="height:20px;"><td class="s0">13</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="inspiring" value="Inspiring" id="0131"></td>
							<td class="st1"  id="strength49">Inspiring</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="independent" value="Independent" id="0132"></td>
							<td class="st2"  id="strength50">Independent </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="idealistic" value="Idealistic" id="0133"></td>
							<td class="st3"  id="strength51">Idealistic</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="inoffensive" value="Inoffensive" id="0134"></td>
							<td class="st4"  id="strength52">Inoffensive </td>
						</tr>
						
						<!-- Fourteenth row -->
						<tr style="height:20px;"><td class="s0">14</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="demonstrative" value="Demonstrative" id="0141"></td>
							<td class="st1"  id="strength53">Demonstrative</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="decisive" value="Decisive" id="0142"></td>
							<td class="st2"  id="strength54">Decisive </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="deep" value="Deep" id="0143"></td>
							<td class="st3"  id="strength55">Deep</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="dryhumour" value="Dry Humour" id="0144"></td>
							<td class="st4"  id="strength56">Dry Humour </td>
						</tr>
						
						<!-- Fifteenth row -->
						<tr style="height:20px;"><td class="s0">15</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="mixeseasily" value="Mixes Easily" id="0151"></td>
							<td class="st1"  id="strength57">Mixes Easily</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="mover" value="Mover" id="0152"></td>
							<td class="st2"  id="strength58">Mover </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="musical" value="Musical" id="0153"></td>
							<td class="st3"  id="strength59">Musical</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="mediator" value="Mediator" id="0154"></td>
							<td class="st4"  id="strength60">Mediator </td>
						</tr>
						
						<!-- Sixteenth row -->
						<tr style="height:20px;"><td class="s0">16</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="talker" value="Talker" id="0161"></td>
							<td class="st1"  id="strength61">Talker</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="tenacious" value="Tenacious" id="0162"></td>
							<td class="st2"  id="strength62">Tenacious </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="thoughtful" value="Thoughtful" id="0163"></td>
							<td class="st3"  id="strength63">Thoughtful</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="tolerant" value="Tolerant" id="0164"></td>
							<td class="st4"  id="strength64">Tolerant </td>
						</tr>
						
						<!-- Seventeenth row -->
						<tr style="height:20px;"><td class="s0">17</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="lively" value="Lively" id="0171"></td>
							<td class="st1"  id="strength65">Lively</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="leader" value="Leader" id="0172"></td>
							<td class="st2"  id="strength66">Leader </td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="loyal" value="Loyal" id="0173"></td>
							<td class="st3"  id="strength67">Loyal</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="listener" value="Listener" id="0174"></td>
							<td class="st4"  id="strength68">Listener </td>
						</tr>
						
						<!-- Eigteenth row -->
						<tr style="height:20px;"><td class="s0">18</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="cute" value="Cute" id="0181"></td>
							<td class="st1"  id="strength69">Cute</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="chief" value="Chief" id="0182"></td>
							<td class="st2"  id="strength70">Chief</td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="chartmaker" value="Chartmaker" id="0183"></td>
							<td class="st3"  id="strength71">Chartmaker</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="contented" value="Contented" id="0184"></td>
							<td class="st4"  id="strength72">Contented </td>
						</tr>
						
						<!-- Nineteenth row -->
						<tr style="height:20px;"><td class="s0">19</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="popular" value="Popular" id="0191"></td>
							<td class="st1"  id="strength73">Popular</td>
							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="productive" value="Productive" id="0192"></td>
							<td class="st2"  id="strength74">Productive</td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="perfectionist" value="Perfectionist" id="0193"></td>
							<td class="st3"  id="strength75">Perfectionist</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="pleasant" value="Pleasant" id="0194"></td>
							<td class="st4"  id="strength76">Pleasant</td>
						</tr>
						
						<!-- Twentieth row -->
						<tr style="height:20px;"><td class="s0">20</td>
							<td><input type="checkbox" class="s1" onclick="updateStrengthCount1()" name="bouncy" value="Bouncy" id="0201"></td>
							<td class="st1"  id="strength77">Bouncy</td>

							<td><input type="checkbox" class="s2" onclick="updateStrengthCount2()" name="bold" value="Bold" id="0202"></td>
							<td class="st2"  id="strength78">Bold</td>
							<td><input type="checkbox" class="s3" onclick="updateStrengthCount3()" name="behaved" value="Behaved" id="0203"></td>
							<td class="st3"  id="strength79">Behaved</td>
							<td><input type="checkbox" class="s4" onclick="updateStrengthCount4()" name="balanced" value="Balanced" id="0204"></td>
							<td class="st4"  id="strength80">Balanced</td>
						</tr>

						
						<!-- Total row -->
						<tr style="height:20px;"><td class="s0">Total Strengths:</td>
							<td><div id="ST1"><span id="Strength1">0</span></div></td>
							<td class="s2"></td>
							<td><div id="ST2"><span id="Strength2">0</span></div></td>
							<td class="s2"></td>
							<td><div id="ST3"><span id="Strength3">0</span></div></td>
							<td class="s2"></td>
							<td><div id="ST4"><span id="Strength4">0</span></div></td>
							<td class="s2"></td>
						</tr>
						
						
						
				</tbody>
			</table>
		<h1>Weakness</h1>
		
				<table class="tableizer-table" style="background-color: #e4f5e4; text-align:center">
					<tbody>
						<!-- TwentyFirst row -->
						<tr style="height:20px;"><td class="w">21</td>
							<td><input type="checkbox" id="0211" class="w1" onclick="updateWeaknessCount1()" name="brassy" value="Brassy"></td>
							<td>Brassy</td>
							<td><input type="checkbox" id="0212" class="w2" onclick="updateWeaknessCount2()" name="bossy" value="Bossy"></td>
							<td>Bossy </td>
							<td><input type="checkbox" id="0213" class="w3" onclick="updateWeaknessCount3()" name="bashful" value="Bashful"></td>
							<td>Bashful</td>
							<td><input type="checkbox" id="0214" class="w4" onclick="updateWeaknessCount4()" name="blank" value="Blank"></td>
							<td>Blank </td>
						</tr>
							
							<!-- TwentySecond row -->
						<tr style="height:20px;"><td class="s0">22</td>
							<td><input type="checkbox" id="0221" class="w1" onclick="updateWeaknessCount1()" name="undisciplined" value="Undisciplined"></td>
							<td>Undisciplined</td>
							<td><input type="checkbox" id="0222" class="w2" onclick="updateWeaknessCount2()" name="unsympathetic" value="Unsympathetic"></td>
							<td>Unsympathetic </td>
							<td><input type="checkbox" id="0223" class="w3" onclick="updateWeaknessCount3()" name="unforgiving" value="Unforgiving"></td>
							<td>Unforgiving</td>
							<td><input type="checkbox" id="0224" class="w4" onclick="updateWeaknessCount4()" name="unenthusiastic" value="Unenthusiastic"></td>
							<td>Unenthusiastic </td>
						</tr>

						<!-- Twentythird row -->
						<tr style="height:20px;"><td class="s0">23</td>
							<td><input type="checkbox" id="0231" class="w1" onclick="updateWeaknessCount1()" name="repititious" value="Repititious"></td>
							<td>Repititious</td>
							<td><input type="checkbox" id="0232" class="w2" onclick="updateWeaknessCount2()" name="resistant" value="Resistant"></td>
							<td>Resistant </td>
							<td><input type="checkbox" id="0233" class="w3" onclick="updateWeaknessCount3()" name="resentful" value="Resentful"></td>
							<td>Resentful</td>
							<td><input type="checkbox" id="0234" class="w4" onclick="updateWeaknessCount4()" name="reticent" value="Reticent"></td>
							<td>Reticent </td>
						</tr>
							
						<!-- Twentyfourth row -->
						<tr style="height:20px;"><td class="s0">24</td>
							<td><input type="checkbox" id="0241" class="w1" onclick="updateWeaknessCount1()" name="forgetful" value="Forgetful"></td>
							<td>Forgetful</td>
							<td><input type="checkbox" id="0242" class="w2" onclick="updateWeaknessCount2()" name="frank" value="Frank"></td>
							<td>Frank </td>
							<td><input type="checkbox" id="0243" class="w3" onclick="updateWeaknessCount3()" name="fussy" value="Fussy"></td>
							<td>Fussy</td>
							<td><input type="checkbox" id="0244" class="w4" onclick="updateWeaknessCount4()" name="fearful" value="Fearful"></td>
							<td>Fearful </td>
						</tr>
											
						<!-- Twentyfifth row -->
						<tr style="height:20px;"><td class="s0">25</td>
							<td><input type="checkbox" id="0251" class="w1" onclick="updateWeaknessCount1()" name="interrupts" value="Interrupts"></td>
							<td>Interrupts</td>
							<td><input type="checkbox" id="0252" class="w2" onclick="updateWeaknessCount2()" name="impatient" value="Impatient"></td>
							<td>Impatient </td>
							<td><input type="checkbox" id="0253" class="w3" onclick="updateWeaknessCount3()" name="insecure" value="Insecure"></td>
							<td>Insecure</td>
							<td><input type="checkbox" id="0254" class="w4" onclick="updateWeaknessCount4()" name="indecisive" value="Indecisive"></td>
							<td>Indecisive </td>
						</tr>
							
						<!-- TwentySixth row -->
						<tr style="height:20px;"><td class="s0">26</td>
							<td><input type="checkbox" id="0261" class="w1" onclick="updateWeaknessCount1()" name="unpredictive" value="Unpredictable"></td>
							<td>Unpredictable</td>
							<td><input type="checkbox" id="0262" class="w2" onclick="updateWeaknessCount2()" name="unaffectionate" value="Unaffectionate"></td>
							<td>Unaffectionate </td>
							<td><input type="checkbox" id="0263" class="w3" onclick="updateWeaknessCount3()" name="unpopular" value="Unpopular"></td>
							<td>Unpopular</td>
							<td><input type="checkbox" id="0264" class="w4" onclick="updateWeaknessCount4()" name="uninvolved" value="Uninvolved"></td>
							<td>Uninvolved </td>
						</tr>
							
						<!-- TwentySeventh row -->
						<tr style="height:20px;"><td class="s0">27</td>
							<td><input type="checkbox" id="0271" class="w1" onclick="updateWeaknessCount1()" name="haphazard" value="Haphazard"></td>
							<td>Haphazard</td>
							<td><input type="checkbox" id="0272" class="w2" onclick="updateWeaknessCount2()" name="headstrong" value="Headstrong"></td>
							<td>Headstrong </td>
							<td><input type="checkbox" id="0273" class="w3" onclick="updateWeaknessCount3()" name="hardtoplease" value="Hard to Please"></td>
							<td>Hard to Please</td>
							<td><input type="checkbox" id="0274" class="w4" onclick="updateWeaknessCount4()" name="hesistant" value="Hesistant"></td>
							<td>Hesistant </td>
						</tr>
							
						<!-- TwentyEigthth row -->
						<tr style="height:20px;"><td class="s0">28</td>
							<td><input type="checkbox" id="0281" class="w1" onclick="updateWeaknessCount1()" name="permissive" value="Permissive"></td>
							<td>Permissive</td>
							<td><input type="checkbox" id="0282" class="w2" onclick="updateWeaknessCount2()" name="proud" value="Proud"></td>
							<td>Proud </td>
							<td><input type="checkbox" id="0283" class="w3" onclick="updateWeaknessCount3()" name="pessimistic" value="Pessimistic"></td>
							<td>Pessimistic</td>
							<td><input type="checkbox" id="0284" class="w4" onclick="updateWeaknessCount4()" name="plain" value="Plain"></td>
							<td>Plain </td>
						</tr>
							
						<!-- TwentyNinth row -->
						<tr style="height:20px;"><td class="s0">29</td>
							<td><input type="checkbox" id="0291" class="w1" onclick="updateWeaknessCount1()" name="angeredeasily" value="Angered easily"></td>
							<td>Angered easily</td>
							<td><input type="checkbox" id="0292" class="w2" onclick="updateWeaknessCount2()" name="argumentative" value="Argumentative"></td>
							<td>Argumentative </td>
							<td><input type="checkbox" id="0293" class="w3" onclick="updateWeaknessCount3()" name="alienated" value="Alienated"></td>
							<td>Alienated</td>
							<td><input type="checkbox" id="0294" class="w4" onclick="updateWeaknessCount4()" name="aimless" value="Aimless"></td>
							<td>Aimless </td>
						</tr>
							
						<!-- Thirty row -->
						<tr style="height:20px;"><td class="s0">30</td>
							<td><input type="checkbox" id="0301" class="w1" onclick="updateWeaknessCount1()" name="naive" value="Naive"></td>
							<td>Naive</td>
							<td><input type="checkbox" id="0302" class="w2" onclick="updateWeaknessCount2()" name="nervy" value="Nervy"></td>
							<td>Nervy </td>
							<td><input type="checkbox" id="0303" class="w3" onclick="updateWeaknessCount3()" name="negativeattitude" value="Negative attitude"></td>
							<td>Negative attitude</td>
							<td><input type="checkbox" id="0304" class="w4" onclick="updateWeaknessCount4()" name="nonchalant" value="Non chalant"></td>
							<td>Non chalant </td>
						</tr>
						
						<!-- Thirty-first row -->
						<tr style="height:20px;"><td class="s0">31</td>
							<td><input type="checkbox" id="0311" class="w1" onclick="updateWeaknessCount1()" name="wantscredit" value="Wants Credit"></td>
							<td>Wants Credit</td>
							<td><input type="checkbox" id="0312" class="w2" onclick="updateWeaknessCount2()" name="workholic" value="Workholic"></td>
							<td>Workholic </td>
							<td><input type="checkbox" id="0313" class="w3" onclick="updateWeaknessCount3()" name="withdrawn" value="With drawn"></td>
							<td>With drawn</td>
							<td><input type="checkbox" id="0314" class="w4" onclick="updateWeaknessCount4()" name="worrier" value="Worrier"></td>
							<td>Worrier </td>
						</tr>
							
						<!-- ThirtySecond row -->
						<tr style="height:20px;"><td class="s0">32</td>
							<td><input type="checkbox" id="0321" class="w1" onclick="updateWeaknessCount1()" name="talkative" value="Talkative"></td>
							<td>Talkative</td>
							<td><input type="checkbox" id="0322" class="w2" onclick="updateWeaknessCount2()" name="tactless" value="Tactless"></td>
							<td>Tactless </td>
							<td><input type="checkbox" id="0323" class="w3" onclick="updateWeaknessCount3()" name="topsensitive" value="Top Sensitive"></td>
							<td>Top Sensitive</td>
							<td><input type="checkbox" id="0324" class="w4" onclick="updateWeaknessCount4()" name="timid" value="Timid"></td>
							<td>Timid </td>
						</tr>
						
						<!-- ThirtyThird row -->
						<tr style="height:20px;"><td class="s0">33</td>
							<td><input type="checkbox" id="0331" class="w1" onclick="updateWeaknessCount1()" name="disorganized" value="Disorganized"></td>
							<td>Disorganized</td>
							<td><input type="checkbox" id="0332" class="w2" onclick="updateWeaknessCount2()" name="domineering" value="Domineering"></td>
							<td>Domineering </td>
							<td><input type="checkbox" id="0333" class="w3" onclick="updateWeaknessCount3()" name="depressed" value="Depressed"></td>
							<td>Depressed</td>
							<td><input type="checkbox" id="0334" class="w4" onclick="updateWeaknessCount4()" name="doubtful" value="Doubtful"></td>
							<td>Doubtful </td>
						</tr>
							
						<!-- ThirtyFourth row -->
						<tr style="height:20px;"><td class="s0">34</td>
							<td><input type="checkbox" id="0341" class="w1" onclick="updateWeaknessCount1()" name="inconsistent" value="Inconsistent"></td>
							<td>Inconsistent</td>
							<td><input type="checkbox" id="0342" class="w2" onclick="updateWeaknessCount2()" name="intolerent" value="Intolerent"></td>
							<td>Intolerent </td>
							<td><input type="checkbox" id="0343" class="w3" onclick="updateWeaknessCount3()" name="introvert" value="Introvert"></td>
							<td>Introvert</td>
							<td><input type="checkbox" id="0344" class="w4" onclick="updateWeaknessCount4()" name="indifferent" value="Indifferent"></td>
							<td>Indifferent </td>
						</tr>
							
						<!-- ThirtyFifth row -->
						<tr style="height:20px;"><td class="s0">35</td>
							<td><input type="checkbox" id="0351" class="w1" onclick="updateWeaknessCount1()" name="messy" value="Messy"></td>
							<td>Messy</td>
							<td><input type="checkbox" id="0352" class="w2" onclick="updateWeaknessCount2()" name="manipulative" value="Manipulative"></td>
							<td>Manipulative </td>
							<td><input type="checkbox" id="0353" class="w3" onclick="updateWeaknessCount3()" name="moody" value="Moody"></td>
							<td>Moody</td>
							<td><input type="checkbox" id="0354" class="w4" onclick="updateWeaknessCount4()" name="mumbles" value="Mumbles"></td>
							<td>Mumbles </td>
						</tr>
							
						<!-- ThirtySixth row -->
						<tr style="height:20px;"><td class="s0">36</td>
							<td><input type="checkbox" id="0361" class="w1" onclick="updateWeaknessCount1()" name="showoff" value="Show-off"></td>
							<td>Show-off</td>
							<td><input type="checkbox" id="0362" class="w2" onclick="updateWeaknessCount2()" name="stubborn" value="Stubborn"></td>
							<td>Stubborn </td>
							<td><input type="checkbox" id="0363" class="w3" onclick="updateWeaknessCount3()" name="skeptical" value="Skeptical"></td>
							<td>Skeptical</td>
							<td><input type="checkbox" id="0364" class="w4" onclick="updateWeaknessCount4()" name="slow" value="Slow"></td>
							<td>Slow </td>
						</tr>
							
						<!-- Thirtyseventh row -->
						<tr style="height:20px;"><td class="s0">37</td>
							<td><input type="checkbox" id="0371" class="w1" onclick="updateWeaknessCount1()" name="loud" value="Loud"></td>
							<td>Loud</td>
							<td><input type="checkbox" id="0372" class="w2" onclick="updateWeaknessCount2()" name="lordoverothers" value="Lord over others"></td>
							<td>Lord over others </td>
							<td><input type="checkbox" id="0373" class="w3" onclick="updateWeaknessCount3()" name="loner" value="Loner"></td>
							<td>Loner</td>
							<td><input type="checkbox" id="0374" class="w4" onclick="updateWeaknessCount4()" name="lazy" value="Lazy"></td>
							<td>Lazy </td>
						</tr>
							
						<!-- Thirtyeight row -->
						<tr style="height:20px;"><td class="s0">38</td>
							<td><input type="checkbox" id="0381" class="w1" onclick="updateWeaknessCount1()" name="scatterbrained" value="Scatterbrained"></td>
							<td>Scatterbrained</td>
							<td><input type="checkbox" id="0382" class="w2" onclick="updateWeaknessCount2()" name="shorttempered" value="Short-tempered"></td>
							<td>Short-tempered </td>
							<td><input type="checkbox" id="0383" class="w3" onclick="updateWeaknessCount3()" name="suspicious" value="Suspicious"></td>
							<td>Suspicious</td>
							<td><input type="checkbox" id="0384" class="w4" onclick="updateWeaknessCount4()" name="sluggish" value="Sluggish"></td>
							<td>Sluggish </td>
						</tr>
							
						<!-- ThirtyNinth row -->
						<tr style="height:20px;"><td class="s0">39</td>
							<td><input type="checkbox" id="0391" class="w1" onclick="updateWeaknessCount1()" name="restless" value="Restless"></td>
							<td>Restless</td>
							<td><input type="checkbox" id="0392" class="w2" onclick="updateWeaknessCount2()" name="rash" value="Rash"></td>
							<td>Rash </td>
							<td><input type="checkbox" id="0393" class="w3" onclick="updateWeaknessCount3()" name="revengeful" value="Revengeful"></td>
							<td>Revengeful</td>
							<td><input type="checkbox" id="0394" class="w4" onclick="updateWeaknessCount4()" name="reluctant" value="Reluctant"></td>
							<td>Reluctant </td>
						</tr>
							
						<!-- Forty row -->
						<tr style="height:20px;"><td class="s0">40</td>
							<td><input type="checkbox"  id="0401"  class="w1" onclick="updateWeaknessCount1()" name="changable" value="Changable"></td>
							<td>Changable</td>
							<td><input type="checkbox" id="0402" class="w2" onclick="updateWeaknessCount2()" name="crafty" value="Crafty"></td>
							<td>Crafty </td>
							<td><input type="checkbox" id="0403" class="w3" onclick="updateWeaknessCount3()" name="critical" value="Critical"></td>
							<td>Critical</td>
							<td><input type="checkbox" id="0404" class="w4" onclick="updateWeaknessCount4()" name="compromising" value="Compromising"></td>
							<td>Compromising </td>
						</tr>
							
						<!-- Total row -->
						<tr style="height:20px;"><td class="s0">Total Weakness:</td>
							<td><div id="WT1"><span id="Weakness1">0</span></div></td>
							<td class="s2"></td>
							<td><div id="WT2"><span id="Weakness2">0</span></div></td>
							<td class="s2"></td>
							<td><div id="WT3"><span id="Weakness3">0</span></div></td>
							<td class="s2"></td>
							<td><div id="WT4"><span id="Weakness4">0</span></div></td>
							<td class="s2"></td>
						</tr>
							

					</tbody>
				</table>
		<!-- combined Total -->
				<h1> Total </h1>
				<table class="tableizertotal-table" style="background-color: #f5cccc">
					<!-- Total row -->
					<tr style="height:20px;"><td class="s0">Combined Total:</td>
						<td><div id="SW1"><span id="selectedstrengthweakness1">0</span></div></td>
						<td class="s2"></td>
						<td><div id="SW2"><span id="selectedstrengthweakness2">0</span></div></td>
						<td class="s2"></td>
						<td><div id="SW3"><span id="selectedstrengthweakness3">0</span></div></td>
						<td class="s2"></td>
						<td><div id="SW4"><span id="selectedstrengthweakness4">0</span></div></td>
						<td class="s2"></td>
					</tr>

				<!-- Java Script code for Strengths-->
				<script type="text/javascript">
						
						window.updateStrengthCount1 = function() {
						     x1 = $(".s1:checked").length;
						    document.getElementById("Strength1").innerHTML = x1;
							
							combined1=x1+y1;
							document.getElementById('selectedstrengthweakness1').innerHTML = combined1;
						};

						window.updateStrengthCount2 = function() {
						     x2 = $(".s2:checked").length;
						    document.getElementById("Strength2").innerHTML = x2;
							
							combined2=x2+y2;
							document.getElementById('selectedstrengthweakness2').innerHTML = combined2;
						};

						window.updateStrengthCount3 = function() {
						     x3 = $(".s3:checked").length;
						    document.getElementById("Strength3").innerHTML = x3;
							
							combined3=x3+y3;
							document.getElementById('selectedstrengthweakness3').innerHTML = combined3;
						};

						window.updateStrengthCount4 = function() {
						     x4 = $(".s4:checked").length;
						    document.getElementById("Strength4").innerHTML = x4;
							
							combined4=x4+y4;
							document.getElementById('selectedstrengthweakness4').innerHTML = combined4;
						};
						</script>
						<!-- Java Script code for Weakness-->
				<script type="text/javascript">
							
					window.updateWeaknessCount1 = function() {
					    y1 = $(".w1:checked").length;
					    document.getElementById("Weakness1").innerHTML = y1;
							
						combined1=x1+y1;
						document.getElementById('selectedstrengthweakness1').innerHTML = combined1;
					};

					window.updateWeaknessCount2 = function() {
					     y2 = $(".w2:checked").length;
					    document.getElementById("Weakness2").innerHTML = y2;
						
						combined2=x2+y2;
						document.getElementById('selectedstrengthweakness2').innerHTML = combined2;
					};

					window.updateWeaknessCount3 = function() {
					    y3 = $(".w3:checked").length;
					    document.getElementById("Weakness3").innerHTML = y3;
							
						combined3=x3+y3;
						document.getElementById('selectedstrengthweakness3').innerHTML = combined3;
					};

					window.updateWeaknessCount4 = function() {
					    y4 = $(".w4:checked").length;
					    document.getElementById("Weakness4").innerHTML = y4;
							
						combined4=x4+y4;
						document.getElementById('selectedstrengthweakness4').innerHTML = combined4;
					};
				
				</script>
				
		
				
				</table>
		  
			<br>
			<br>
			<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
				<button class="cancel" style="width:150px; padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px; align:center;" type="submit">Submit</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button style="width:150px; padding: 12px;   border: 1px solid #f5f0eb;  border-radius: 4px;  box-sizing: border-box;  margin-top: 6px;  margin-bottom: 16px;" type="button"  class="buttonhov">Save</button>
				</div>
			</form>
		</center>
	</body>
</html>
				