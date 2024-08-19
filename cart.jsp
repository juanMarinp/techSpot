<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito - TechSpot</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header class="bg-dark text-white py-3">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h1><a href="index.jsp" class="text-white text-decoration-none">TechSpot</a></h1>
                <nav>
                    <ul class="nav">
                        <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="products.jsp">Productos</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="contact.jsp">Contacto</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="cart.jsp">Carrito</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="register.jsp">Registrarse</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="login.jsp">Iniciar sesión</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <section class="cart py-5">
            <div class="container">
                <h2 class="text-center mb-4">Tu Carrito de Compras</h2>
                
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Producto</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Precio Unitario</th>
                            <th scope="col">Total</th>
                            <th scope="col">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            // Ejemplo de datos de carrito (normalmente esto vendría de una base de datos o una sesión)
                            List<CartItem> cartItems = (List<CartItem>) session.getAttribute("cartItems");
                            double subtotal = 0.0;
                            double shipping = 20.0;
                            
                            if (cartItems != null) {
                                for (CartItem item : cartItems) {
                                    double total = item.getPrice() * item.getQuantity();
                                    subtotal += total;
                        %>
                        <tr>
                            <td><%= item.getName() %></td>
                            <td>
                                <form action="updateCart.jsp" method="post">
                                    <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                                    <input type="number" name="quantity" class="form-control" value="<%= item.getQuantity() %>" min="1">
                                    <button type="submit" class="btn btn-primary">Actualizar</button>
                                </form>
                            </td>
                            <td>$<%= item.getPrice() %></td>
                            <td>$<%= total %></td>
                            <td>
                                <form action="removeFromCart.jsp" method="post">
                                    <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                                    <button type="submit" class="btn btn-danger">Eliminar</button>
                                </form>
                            </td>
                        </tr>
                        <% 
                                }
                            }
                            double totalAmount = subtotal + shipping;
                        %>
                    </tbody>
                </table>

                <div class="row">
                    <div class="col-md-6 offset-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Resumen de la Compra</h5>
                                <p><strong>Subtotal:</strong> $<%= subtotal %></p>
                                <p><strong>Envío:</strong> $<%= shipping %></p>
                                <p><strong>Total:</strong> $<%= totalAmount %></p>
                                <a href="checkout.jsp" class="btn btn-primary">Proceder al Pago</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="bg-dark text-white text-center py-3">
        <div class="container">
            <p>&copy; 2024 TechSpot. Todos los derechos reservados.</p>
            <ul class="nav justify-content-center">
                <li class="nav-item"><a class="nav-link text-white" href="privacy.jsp">Política de Privacidad</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="terms.jsp">Términos y Condiciones</a></li>
            </ul>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
