<%--
  Created by IntelliJ IDEA.
  User: snowbunny
  Date: 7/19/23
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Order Form<</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="/pizza-order" method="post">
    <label>Crust Type:</label>

        <select name="crustType"> id="crustType">
            <option value="thin">Thin</option>
            <option value="thick">Thick</option>
            <option value="stuffed">Stuffed Crust</option>
        </select>
        <br>
    <label>Sauce Type: </label>
    <label>
        <select name="sauceType">
            <option value="tomato">Tomato Sauce</option>
            <option value="bbq">BBQ Sauce</option>
            <option value="garlic">Garlic Sauce</option>
        </select>
    </label>
    <br>
    <label>Size Type: </label>
    <label>
        <select name="sizeType">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
        </select>
    </label>
    <br>
    <label>Toppings:</label>
    <br>
    <input type="checkbox" name="toppings" value="pepperoni">Pepperoni<br>
    <input type="checkbox" name="toppings" value="mushrooms">Mushrooms<br>
    <input type="checkbox" name="toppings" value="olives">Olives<br>
    <input type="checkbox" name="toppings" value="onions">Onions<br>
    <br>
    <label>Delivery Address: </label>
    <input type="text" name="addressAddress">
    <br>
    <input type="submit" value="Place Order">
</form>
</body>
</html>
