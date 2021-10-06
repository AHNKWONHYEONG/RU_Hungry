<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.buttons {
	padding: 0px 200px;
	width: 900px;
}

.bigImage {
	width: 200px;
	height: 200px;
}

.home {
	width: 150px;
}

.header {
	height: 120px;
}

.bbody {
	height:400px;
}
.info{
width:100px;
height:130px;
text-align: center;
}
.infoo{
display: inline-block;
margin:10px 0px;
width:90px;
}
.chk{
 position: absolute;
        left: 900px;
        top: 200px;
        align:center;
      }
}

</style>
</head>
<body>
	<div class="header">
		<div class="home">
			<button type="button">
				<img src=
				"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEX///8AAADi4uI+Pj6Ghoa0tLQwMDDo6OilpaXKysotLS3y8vKWlpbr6+sWFhbu7u4oKCgiIiIbGxv39/cuLi5SUlJLS0vCwsKAgIBbW1sRERHW1tY1NTVqamrNzc16enpx7ABkAAAEgklEQVR4nO2c63aqMBBGpTeLHMRqtTfbvv9bHqsil0wgGXKZsL79s1oXezGT+dJUFgsAAAAAAAAAAAAABg+xL8Azu32238W+CJ/sDlmWHWasuDtmfxxnq1htsgubKval+KFcZTWrMvbF+OB2B+d6F4t11mZdxL4g15SbrMtmZoXa6sF59mLxoghm2cuMCrVaE4KnXpzNcrNUS/RaqMvYl+aGSid4UpzFXSzoEr0W6gx6saQWmdZyk/yKSoyJXqEmrlj0B73KJulC1YyJXi8mvNwoUU1zF5MtVLIHn4mfpdqLxZaQyRc58dNtkr1YUj2Yn16gFNcJ3kUyquXnlyjF9AJcRS0y+fVFSjG1XT8Z1fLby2ShJtWLZFTLW2+gFFMKcOSYyDtvoRRfk1Ekd/R5703kXUykUMmo1hfU9GISyw0Z1VRBzYqaQKEa9GANORfFK2qiGk2KAa60EdQoir6LFiV6IbVCHYxqNGkFuJGoRpNSgDMeE13SGRrWPViTSi8aRTWaNAKcYVSjSSHADezoTZC/6ycPX8wFNYqC7iJrTHSRPTRGd/QmSN71s8dEF7lDgxHVaKQGuEljoovMocGMajQSA5yjHqyR14sTohqNtADnsAdrZPXixKhGIynATY5qNHICnIOoRiMlwDmJajQyApzjMdFFwtAg/0/GlaBm9ActVA9jokvsoeE0qtHEDXBee7AmZi9aHb7wiXdsY3n4wifWsU2QEr0Qp1Cd7ehNiLHr9xbVaMIHOI9RjSZ0gCtfAwuG/r8b5zt6E0Lu+r1HNZpwAW4ZchVtQ66oHnb9AedgnzBzMfCY6BJiaASLajT+A1zEEr3gu1CDRjUavwEuag/W+OzFADt6E/zt+qP3YI2vXowS1Wj8BLhIUY3GR4DzcvjCx/2xjafDFz6uj23IMfHm7noZvFGFyu5F+kvKdy4v2Jo76pK4u37Nl5QFGjKHhu5LyhINWcc22i8pizRkDA39l5RlGloHuIEHBQg1tOxF8vBFuKHVsQ25oxdvaLHrH36WhVxD40Ild/RJGBru+gefJ2NmmD/zMEi8w4ZGAW45/DwZI8P3kY/Q8T7ZMHsZ32l8jF2GgeED09Dg2aZjhtnH6EcQXfgp1vBT+QiTTtz1Fb8OYg0PX31BoweHFsfOL+WLe7GG970t8dFw6FdtxdP6Jtmwo3g0jt+tjdPfAi7asKVos4Xa1anmPKFkG94UV1YP770W6mUECze8KpqX6FXx6SYo3vCs+GS9BT4NjTpEiTc8KZqNiS7VLSXKN1zk0/7ynYDhRCYafv/T8z0Lw8eBdz7CsA8MecBQAYYNMFSAIQ8YKsCwAYYKMOQBQwUYNsBQAYY8YKgAwwYYKsCQBwwVYNgAQwUY8oChAgwbYKgAQx4wVIBhAwwVYMgDhgowbIChAgx5wFABhg0wVIAhDxgqwLABhgow5AFDhcQNf8rlCNUv0/C3Gvvo8ieAoTXmhtbAEIYwhCEMYQhDGMIQhnMy3K+eJrAdNNxO+ejV3pEhAAAAAAAAAAAAAAAAAABACP4DkSlRlcOCV/AAAAAASUVORK5CYII="
					width="100px" height="100px" onclick="location.href='main.jsp'">
			</button>
		</div>
	</div>
	<br />

	<div class="bbody">
		<div class="info">
		<img src=
		"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMboZCO9t-ZUJA9cIEJaLXfp67qJmS2hHRcvDldP2L8eCedaRVpI05anMy8TANCPk6w&usqp=CAU"
			width="50px" height="50px">
		<br/>
		<button type="button" class="infoo">위치설정
		</button><br/>
		<button type="button" class="infoo">선호 초기화
		</button><br/>
		<button type="button" class="infoo" onclick="location.href='index.jsp'">로그아웃
		</button><br/>
		</div>
		<div class="buttons">

			<button type="button">
				<img src=
				"https://e7.pngegg.com/pngimages/42/565/png-clipart-trophy-computer-icons-award-medal-award.png"
					class="bigImage" onclick="location.href='worldcup.jsp'">
			</button>

			<button type="button">
				<img src=
				"https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-maps-icon-outline-style-png-image_1922190.jpg"
					class="bigImage" onclick="location.href='choice.jsp'">
			</button>

			<button type="button">
				<img src=
				"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAdVBMVEX///8AAADLy8tFRUX19fXFxcVaWlry8vL6+vqrq6vu7u5nZ2c0NDTIyMjOzs6zs7OSkpIICAguLi7g4OA5OTlfX19TU1NxcXGTk5Pi4uKAgIC5ubkbGxsRERE/Pz/a2tpJSUl6enqcnJyJiYkiIiIYGBikpKQkpEjSAAAEd0lEQVR4nO3diVbiQBAF0ERAIiJoEMWVRcb//8QxRCQkvaUTp+bVefcLqk6g0kt1J0mIiIiIiIiIiIiIiIiIiP65bLRbvuf7fPD4OZOO5RcM55u06nqUSYfUq+HtXVqXX0lH1aP5WyO/Q44X0oH1ZHhpzK/wLB1bL55erQmm6WAoHV53a0d+xS91Ih1gV4tmiTk3BX+KmesnWtpIx9iNvcicQJebl4AE03QtHWa84Z+gDO+l44y3C0owTefSgcbKwh4h8EMM+xcWUOcaIYW09CgdaqTgBNNUOtQ4Fy0yxHxhXLXIELOabltk+CEdbJSHFhleSgcbZdAiw3fpYKPct8gQ852v/xkuW2T4IB1slI8WGWLOEectMsRcO20zphlJBxtl3CLDJ+lg47TIUDrUSOEvxFw61Ejb4AyvpUONFLpMk6Yr6VAjjYIzfJEONdIkOEPQUpoMzduGBmPpUGOFzhAH0oFG2wZmiLrUFl5MUUtpkswCM8QclRaeAjNcSAcaLcuDEtzDltLQYopbSpPkOShD3FIauvuEOcEvhRVT5NaoLChD6JaaoF1g6SA7uQ5IEHOt9OgzIEPcMVshZBKMOv0thUyCUae/3wIylA6xI/+4DXPb6cS/PbOVDrEjf7vCTjrEjjwtwiluP9SRv5hCj9m+ZO+eBHPwLmj/uG0pHWBnt54MMXuFqnzjNuwxW8FXTDF79qo85xHegNfZjtzFdCodXg+2zgxRd3+r3G01yOtsR+71thvp8PrgzBB+RFNw7gRLB9eLR0eCmL3Bda59Uux1tiPXuA1/zFZwdfChTw5LrnGbkmsH7O3Q2Av6J/b1Nszm5yb7PqmGMVthYc0Qf3JYmth2Ee90lNIvG0uG6Av6J7Zxm4bJYcm2tP8pHVhvbFNEFZPDA9vSPvjeaJV53PYmHVaPzOfWN9Jh9cg8RbyVDqtH5nGbjslhyVxqFBUay3qbdFC9MrVkIDfONpmmiPg7h1WmpX0tk8OSqWtfy+SwZFpvU7BzWNUsNboKjWkXEblD36TZSove7VXXbFhA7/aqa47bVI3ZCtNagqgH1O3qS/s6dg6r6lNEHTuHVfVdRNxTlTb1cRvuqUqrWobS4fyC86V9PQv6J6uzDHVNDkvnC9/6Ck1y3qS4lw7mV6y1P8LqK1HXAkbFpGzcHyh8F/6YzEYX6iYVRERERET/nWwxW6tpKm0Yvhy7MAcrXfu/pfF5s8JG3Sy/+YHApa5fq/FUvqIdxMxyh4uexjbrR4O0NAk7rlXQ8V90HQTeSAfXC+cVnxpeGu6LMTTsQXnuwsJ/ZfguGcI/oOe7vQW/vc17nRn8C8N7+yX8Nob3m0jwEynvZx6R79g90P8MXbdiHMBXGt/XA17h2719F17j9yj6vj2u4KSs5+Z5+L+hb2CqomPfWU0VPEL3J4OUHEmwfyYQv5B+s904MIV/F/4wp6gowSS5MfwXVZTRk/G2ll+uZ8H7aFHNcXql5A6smpvV8n6fD7Zz+Hk9EREREREREREREREREUH6C66xKeXSJ+kcAAAAAElFTkSuQmCC"
					class="bigImage" onclick="location.href='like.jsp'">
			</button>

		</div>
		<div class="chk">
	<form action='a.jsp'>
  음식<br>
  <input type='checkbox' name='food' value='korean' />한식
  <br>
  <input type='checkbox' name='food' value='chineese' />중식
  <br>
  <input type='checkbox' name='food' value='japanese' />일식
  <br>
  <input type='checkbox' name='food' value='boonsik' />분식
  <br>
  <input type='checkbox' name='food' value='yangsik' />양식
  <br>
  <input type='checkbox' name='food' value='fastfood' />패스트푸드
  <br>
  <input type='submit'>
</form>
	</div> 
	</div>
</body>
</html>