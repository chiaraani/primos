#language: es
Característica: ingresar número natural
    Escenario: un usuario ingresa correctamnete un número natural
        Dado I run `primos` interactively
        Entonces el usuario escribe un 10
        Y it should pass with:
        """
        Inserta el límite hasta donde quieres calcular primos:
        2 <= 1 ✓
        3 <= 2 ✓
        5 <= 3 ✓
        7 <= 4 ✓
        Total de primos: 4
        Hasta el número: 10
        """
    Escenario: un usuario ingresa correctamnete un string
        Dado I run `primos` interactively
        Cuando el usuario escribe un "hola"
        Y it should pass with:
        """
        Inserta el límite hasta donde quieres calcular primos:
        Esto no es un número natural
        """
    Escenario: un usuario ingresa un número negativo
        Dado I run `primos` interactively
        Cuando el usuario escribe un 0
        Y it should pass with:
        """
        Inserta el límite hasta donde quieres calcular primos:
        Esto no es un número natural
        """