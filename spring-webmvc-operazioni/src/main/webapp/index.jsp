<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci frase</title>
</head>
<body>
<div style="text-align: center;margin-top: 10%;">
<h1>Scegli l'Operazione :</h1>
<form action="testChiamata">
<input type="radio" id="operazione" name="operazione" value="1">
<label for="operazione">Somma [ + ]</label>
<input type="radio" id="operazione" name="operazione" value="2">
<label for="operazione">Sottrazione [ - ]</label>
<input type="radio" id="operazione" name="operazione" value="3">
<label for="operazione">Moltiplicazione [ * ]</label>
<input type="radio" id="operazione" name="operazione" value="4">
<label for="operazione">Divisione [ / ]</label> <br><br><br>

<input type="submit" value="Calcola"> 
</form>

</div>
</body>
</html>