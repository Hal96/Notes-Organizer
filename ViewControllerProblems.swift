//
//  ViewControllerProblems.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/21/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class ViewControllerProblems: UIViewController {
    
    @IBOutlet weak var imageProblem: UIImageView!
    
    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
        let problemiamge : UIImage
    }
    
    func  InicializarPreguntas ()
    {
        let n = Int(arc4random_uniform(5))// genera un numero aleatorio entre 0 y 4
        
        if tema == 1
        {
            if n == 0
            {
                questions = [
                    
                    Question(
                        question: "Cuando un objeto cae libremente la aceleración en el sitio más alto es cero",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge : #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Mientras sube un objeto lanzado hacia arriba, su aceleración se mantiene constante y su velocidad disminuye",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Mientras un objeto cae libremente su aceleración y su velocidad se incrementan",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto que es lanzado verticalmente hacia arriba en el sitio más alto su velocidad es máxima",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto que cae desde cierta altura su velocidad es máxima en el sitio más bajo",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En el movimiento vertical el tiempo que tarda en subir el objeto es menor que el tiempo que tarda en bajar",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En el movimiento vertical, la velocidad con la que es arrojado hacia arriba el objeto es mayor a la velocidad con la que regresa al mismo sitio.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En el movimiento vertical, mientras el objeto se encuentre por encima del sitio de lanzamiento, la “h” tiene signo positivo.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
                
                
            }
                
            else if n == 1
            {
                
                questions = [
                    Question(
                        question: "En una gráfica velocidad tiempo el área bajo no se usa",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para obtener la aceleración media en una gráfica velocidad tiempo es necesario obtener la pendiente entre los dos puntos señalados por los tiempos.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica velocidad tiempo la distancia y el desplazamiento pueden tener diferentes valores",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una línea paralela ala eje “x” en la gráfica posición tiempo implica que el objeto está en reposo ",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica posición tiempo una línea inclinada a la izquierda implica velocidad negativa.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al considerar la distancia en la gráfica posición tiempo no es importante la dirección de los movimientos.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica velocidad tiempo cuando la curva “toca” el eje horizontal la velocidad es cero",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para obtener la velocidad instantánea en una gráfica posición tiempo es necesario obtener la pendiente",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica velocidad tiempo el desplazamiento siempre tiene signo positivo, aún en áreas bajo el eje “x”",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica velocidad tiempo al comparar dos trazos, el mas “verticalizado” tendrá mayor velocidad.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En la gráfica velocidad tiempo una línea recta paralela al eje “x” implica velocidad cero.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
                
                
            }
            else if n == 2
            {
                questions = [
                    
                    Question(
                        question: "Cuando un objeto es lanzado horizontalmente desde cierta altura, el tiempo que permanece en el aire depende en cierta parte de la altura desde la que fue arrojado.",
                        answers: ["TRUE", "FALSE", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question: " Al disparar con cierto ángulo un proyectil, y despreciando el efecto del aire, el valor máximo del componente vertical de la velocidad se obtiene exclusivamente en la parte más alta de la trayectoria",
                        answers: ["TRUE", "FALSE", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En toda la trayectoria de un proyectil, la velocidad vertical está cambiando constantemente de valor.",
                        answers: ["TRUE", "FALSE", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En un tiro parabólico, la velocidad horizontal se incrementa conforme cae el objeto",
                        answers: ["TRUE", "FALSE", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question:"En un tiro parabólico, la velocidad horizontal se incrementa conforme cae el objeto",
                        answers: [" la velocidad con la que fue arrojada", "el tamaño de la piedra", "la distancia horizontal que recorre", "la altura del edificio"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question:"Un cañón que forma un ángulo con respecto al eje horizontal dispara un proyectil, señala lo correcto",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "Vectores_om_15")),
                    Question(
                        question:"En el lanzamiento de proyectiles, el ángulo optimo para logra el alcance máximo es:",
                        answers: ["90°", "60°", "45°", "90°"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question:"En el lanzamiento de proyectiles, el ángulo optimo para logra el alcance máximo es:",
                        answers: ["90°", "60°", "45°", "90°"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "Vectores_om_16"))
                ]
                
            }
            else if n == 3
            {
                
                questions = [
                    
                    Question(
                        question: "La gráfica representa el comportamiento de la velocidad respecto al tiempo para una partícula que se mueve a lo largo de una trayectoria recta. Cuál es el intervalo de tiempo más grande en qué la partícula está avanzando hacia el este. ",
                        answers: ["De 0 a 3 s", "De 3 s a 6 s", "Todo el tiempo", "Nunca"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_9") ),
                    Question(
                        question: "La gráfica representa el comportamiento de la velocidad respecto al tiempo para una partícula que se mueve a lo largo de una trayectoria recta. Cuál es el intervalo de tiempo más grande en qué la partícula está avanzando hacia el este. ",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "Vectores_om_10")),
                    Question(
                        question: "La gráfica representa el comportamiento de la velocidad respecto al tiempo para una partícula que se mueve a lo largo de una trayectoria recta. ¿Cuál es la mejor descripción del movimiento? ",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "Vecotres_om_11")),
                    Question(
                        question: "La gráfica representa el comportamiento de la posición respecto al tiempo para una partícula que se mueve a lo largo de una trayectoria recta. ¿Cuál es la mejor descripción del movimiento?",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "Vectores_om_12")),
                    Question(
                        question: "La gráfica representa el comportamiento de la posición respecto al tiempo para una partícula que se mueve a lo largo de una trayectoria recta. ¿Cuál es la mejor descripción del movimiento?",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 1,
                        problemiamge:#imageLiteral(resourceName: "Vectores_om13")),
                    Question(
                        question: "Si la pendiente (slope), en un punto de la gráfica de la velocidad en función de tiempo de un cuerpo vale cero, esto significa que el cuerpo:",
                        answers: ["a", "b", "c", "d"],
                        correctAnswer: 2,
                        problemiamge:#imageLiteral(resourceName: "Vectores_om_14")),
                    Question(
                        question: "Al analizar un gráfico de velocidad en función del tiempo de un cuerpo se observa que aunque permanece negativa la velocidad, su magnitud va disminuyendo, luego la aceleración que actúa sobre el cuerpo es :",
                        answers: ["Positiva", "Negativa", "Cero", "Puede ser positiva o negativa"],
                        correctAnswer: 0,
                        problemiamge:#imageLiteral(resourceName: "cross")),
                    Question(
                        question: "El tiempo que permanece en el aire el proyectil depende del valor del componente horizontal de su velocidad.",
                        answers: ["TRUE", "FALSE", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge:#imageLiteral(resourceName: "cross"))
                    
                ]
                
            }
            else if n == 4
            {
                questions = [
                    
                    Question(
                        question: "En todo momento la aceleración de la gravedad tiene signo negativo.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando el objeto está subiendo el signo de la velocidad es negativo y cuando está bajando tiene signo positivo. ",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Si un objeto lanzado hacia arriba permanece en el aire 4 segundos, entonces tarda dos segundos en llegar al sitio más alto. ",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando un objeto cae libremente la velocidad inicial es cero.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La aceleración de un objeto que cae,incrementa su valor con cada segundo de tiempo.",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En una gráfica posición tiempo mientras mas vertical sea el trazo mayor velocidad",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En una gráfica velocidad tiempo una línea paralela al eje “x” implica aceleración constante",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En una gráfica velocidad tiempo, la pendiente representa la velocidad instantánea",
                        answers: ["True", "False", "NA", "NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
                
                
            }
            
        }
            
        else if tema == 2
        {
            
            
            if n == 0
            {
                questions = [
                    
                    Question(
                        question: "Cuando una cantidad física tiene solo magnitud, un vector es una herramienta metafísica útil para representarla",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Las cantidades vectoriales son escalares y esto significa que estas últimas cantidades tienen magnitud y dirección",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un vector representa una cantidad física que no tiene unidades",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
            else if n == 1
            {
                questions = [
                    
                    Question(
                        question: "Una cantidad vectorial está dada solamente por un valor numérico",
                        answers: ["True","False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La propiedad conmutativa para sumar vectores dice que no se pueden restar",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "El negativo de un vector tiene la misma magnitud y dirección que su vector opuesto",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                    
                ]
            }
            else if n == 2
            {
                questions = [
                    
                    Question(
                        question: "El significado físico de un vector unitario es la descripción de una dirección en el espacio xyz",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un vector unitario solo sirve para indicar que su magnitud vale uno",
                        answers: ["False","True","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "¿Cuál de las siguientes es una cantidad escalar?",
                        answers: ["Campo eléctrico","Aceleración","Potencia","Cantidad de Movimiento"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
            else if n == 3
            {
                questions = [
                    
                    Question(
                        question: "¿Cuál de las siguientes es una cantidad escalar?",
                        answers: ["Campo eléctrico","Aceleración","Potencia","Cantidad de Movimiento"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Identificar el diagrama que representa al vector 𝐶 = −4.0𝑖̂ + 2.0 𝑗̂ − 2.0𝑘 . Considere el eje 'Z' perpendicular al plano de la hoja del examen",
                        answers:["a","b","c","d"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_2")),
                    Question(
                        question: "Se tiene un vector 𝐷 en el segundo cuadrante de magnitud |𝐷| = 3.0 y que hace un ángulo de 25o con el eje x negativo. ¿Cuáles son sus componentes?",
                        answers:["𝐷𝑥 =1.3,𝐷𝑦 =−2.7","𝐷𝑥 = −1.3 , 𝐷𝑦 = 2.7","𝐷𝑥 =−2.7,𝐷𝑦 =1.3","𝐷𝑥 = 2.7 , 𝐷𝑦 = −1.3"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_3")),
                    Question(
                        question: "En la siguiente figura se muestra la suma vectorial de tres vectores, ¿Cuál vector representa la resultante de esa suma?",
                        answers:["A","B","C","D"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_7"))
                    
                ]
            }
            else if n == 4
            {
                questions = [
                    
                    Question(
                        question: "De las siguientes cantidades físicas, cual considera que es un vector",
                        answers:["un avión que se dirige a 0o","un avión que viaja a 300.0 km/h","un automóvil que recorre una distancia de 600.0 km a una velocidad de 80.0 Km/h","un barco que viaja a una velocidad de 125.0 km/h hacia el sureste del puerto de Tampico"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_4")),
                    Question(
                        question: "A las cantidades medibles que tienen magnitud, dirección y sentido se les llama",
                        answers:["Relativas","absolutas","escalares","Vectoriales"],
                        correctAnswer: 3,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "¿En cuál de las siguientes magnitudes se hace referencia a una magnitud escalar?",
                        answers:["A","B","C","D"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_6")),
                    Question(
                        question: "De la siguiente figura la suma de dos vectores, cual vector representa la resultante",
                        answers:["A","B","C","D"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "Vectores_OM_8"))
                    
                ]
            }
            
            
            
        }
        else if tema == 3
        {
            
            if n == 0
            {
                questions = [
                    
                    Question(
                        question: "La aceleración que adquiere un cuerpo tiene el misma dirección que la fuerza que la produce.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Si se duplica la fuerza que actúa sobre un cuerpo acelerado, también su aceleración se duplica.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fuerza de fricción nunca produce aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fuerza normal nunca produce aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando un objeto aumenta o disminuye su velocidad, es porque en el mismo se está presentando una fuerza resultante.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La 2a Ley de Newton  considera la aceleración de un objeto sobre el cual actúa una fuerza resultante.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto se mueve a la derecha al ser estirado horizontalmente con una fuerza de 10N tiene fricción de 8N, su aceleración es hacia la derecha.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto se mueve a la derecha al ser estirado horizontalmente con una fuerza de 7N tiene fricción de 8N, su aceleración es hacia la derecha.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La dirección de la aceleración de un objeto depende de la dirección de la fuerza resultante sobre él.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Considerando la segunda ley de Newton, la aceleración que adquiere un objeto es independiente de su masa.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En todos los casos la fricción produce una aceleración negativa.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un cuerpo de masa (m) adquiere una aceleración  (a) cuando se le aplica una fuerza (F). Si la fuerza aumenta tres veces y la masa disminuye 4 veces. Con respecto de la aceleración podemos afirmar que aumenta 4/3.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un bloque de masa “M” está resbalando por un plano inclinado sin fricción. Determine el valor de la fuerza normal ejercida por el plano sobre el bloque.",
                        answers: ["g sen ø", "Mg cos ø","Mg sen ø","cero porque el plano no tiene "],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fuerza de reacción del peso de un objeto sobre la tierra es:",
                        answers: ["Una fuerza sobre el objeto hacia arriba", "Una fuerza sobre el objeto hacia abajo","Una fuerza sobre el centro de la tierra hacia arriba","Una fuerza sobre el centro de la tierra hacia abajo "],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                    
                    
                    
                ]
            }
            else if n == 1
            {
                questions = [
                    
                    
                    Question(
                        question: "Cuando todas las fuerzas que actúan sobre un cuerpo se cancelan entre si, el cuerpo se moverá con aceleración uniforme.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un cuerpo esta en equilibrio cuando esta en reposo pero no cuando se mueve con velocidad constante.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando chocan dos objetos con masas diferentes, el de menor masa experimenta más fuerza sobre él.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un cuerpo sólo esta en equilibrio cuando no actúa sobre el ninguna fuerza.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "la normal se presenta cuando el objeto está apoyado en una superficie.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un trabajador está empujando horizontalmente una gran caja de madera sobre una superficie horizontal con fricción, de modo que la caja se mueve a velocidad constante, ¿cómo es la fuerza que ejerce el trabajador comparada con la fuerza de fricción que se opone al movimiento?",
                        answers: ["Mayor", "Menor","Igual","No existe relación alguna"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La normal es la tendencia de un objeto a mantener su estado de reposo o movimiento.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La normal es una fuerza paralela al plano donde se encuentra el cuerpo que la produce.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La normal es una fuerza que se presenta cuando el objeto esta apoyado en una superficie.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Dos cuerpos de diferente masa están sobre una mesa horizontal, el de mayor masa, mayor fuerza normal.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando todas las fuerzas que actúan sobre un objeto se cancelan, entonces el objeto esta en equilibrio, en reposo o en movimiento con velocidad constante.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una fuerza proporciona a una masa una aceleración determinada, la mitad de la fuerza, proporcionaria a la misma masa el doble de aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                    
                ]
            }
            else if n == 2
            {
                questions = [
                    
                    Question(
                        question: "Cuando un objeto se mueve con velocidad constante sobre una superficie horizontal, en todos los casos es porque no existe fricción.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "El peso del objeto que se mueve en una superficie horizontal no tiene relación con la fricción cinética.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La aceleración adquirida por un cuerpo es inversamente proporcional a la fuerza que se le aplica.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: " Según la segunda ley de Newton, a mayor masa menor aceleración sobre un cuerpo.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: " Un cuerpo de masa ( m) adquiere una aceleración (a) cuando se le aplique una fuerza (F). Si la fuerza aumenta tres veces y la masa disminuye 4 veces, con respecto a la aceleración podemos afirmar que:",
                        answers: ["aumenta 4/3", "disminuye ¾","aumenta 12 veces","disminuye 12 veces"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: " La dirección de la fuerza normal que actúa sobre un objeto cuando está apoyado sobre una superficie es:",
                        answers: ["Paralela al la superficie sobre la que se encuentra apoyado el objeto", "Perpendicular a la superficie en contacto con el objeto","Algunas veces es paralela y otras es perpendicular a la superficie","Depende de la dirección del movimiento"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En ausencia de una fuerza resultante, un cuerpo en reposo, permanece en reposo, esto corresponde a la tercer ley de Newton.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto se mueve con velocidad constante porque la fuerza resultante va en dirección del movimiento.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "A toda fuerza de acción hay una de reacción igual en magnitud, pero en dirección contraria, es un enunciado de la primer ley de Newton.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "un objeto que cae libremente se encuentra en equilibrio.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para un objeto no equilibrado, a mayor fuerza mayor aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Bajo ninguna circunstancia el peso es capaz de producir aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
            else if n == 3
            {
                questions = [
                    
                    Question(
                        question: "La primera ley de Newton se refiere a la propiedad de los cuerpos a mantener su estado de reposo o movimiento con velocidad constante.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando un auto choca contra una pared sólida (sin derrumbarla), la fuerza que el auto ejerce sobre la pared es menor que la fuerza que ejerce la pared sobre el auto.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Fuerzas iguales en magnitud y en dirección contraria son referidas en la tercer ley de Newton.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando un objeto se mueve con velocidad constante por un plano horizontal, la fricción es igual al peso del objeto.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una fuerza comunica a una masa una aceleración determinada. ¿ qué fuerza comunicará a la misma masa una aceleración doble?",
                        answers: ["el doble de la fuerza", "el cuádruple de la fuerza","la mitad de la fuerza","la cuarta parte de la fuerza"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "De acuerdo a la 2ª. ley de Newton qué pasa con el valor de la aceleración que experimenta un objeto al incrementar la fuerza que se aplica sobre él:",
                        answers: ["aumenta proporcionalmente a la fuerza", "disminuye proporcionalmente a la fuerza","depende únicamente del valor de la masa","no afecta el valor de la fuerza aplicada"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto se mueve con velocidad constante en una mesa horizontal, si la fricción es de 10Nt, la fuerza que lo mueve también es de 10Nt.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para un auto compacto que choca contra un camión, la fuerza que experimenta es mayor que la experimentada por el camión.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un caja de 10kg cuelga del techo por medio de una cuerda la cual deberá tener una tensión de 98Nt .",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para un objeto no equilibrado, si duplicamos la masa, sin variar la fuerza, su aceleración también se duplica.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fricción es una fuerza que nunca es capaz de producir aceleración.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un bloque se mueve con velocidad variable en dirección Este sobre un superficie áspera horizontal, estirado por una fuerza paralela a la superficie, entonces podemos decir que la fuerza aplicada es, comparada con la fuerza de roce:.",
                        answers: ["Igual", "Mayor","Menor","faltan datos para saberlo"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
            else if n == 4
            {
                questions = [
                    
                    Question(
                        question: "La fuerza Normal se encuentra presente en un objeto que se encuentra sobre una superficie. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Dos objetos se mueven horizontalmente con la misma velocidad, el de mayor masa tiene más inercia",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fricción siempre tiene dirección contraria con respecto al eje del movimiento",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fuerza normal siempre es perpendicular (90°)a la superficie.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un cuerpo puede estar en equilibrio cuando está en movimiento:",
                        answers: ["Por la inercia", "Por la aceleración","Por el reposo","Por la velocidad constante"],
                        correctAnswer: 3,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "El peso es un vector que siempre va dirigido hacia abajo",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Según la tercera ley de Newton, la fuerza de acción y de reacción consiste en fuerzas de igual magnitud y dirección. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La inercia de un objeto depende de su masa. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fricción es una fuerza que bajo ciertas circunstancias tiene la misma dirección que el movimiento. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Bajo ciertas circunstancias la normal puede producir aceleración. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un objeto que aumenta su velocidad es porque en un eje tiene una fuerza mayor que otra. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una bicicleta choca de frente con una banqueta. La bicicleta experienta una fuerza F. Podemos afirmar que durante el choque la banqueta:. ",
                        answers: ["Experimenta una fuerza mayor a F","Experimenta una fuerza menor a F","Experimenta una fuerza igual a F","No es posible comparar las fuerzas desconociendo la velocidad inicial de la bicicleta"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                    
                ]
            }
            
            
        }
        else if tema == 4
        {
            if n == 0
            {
                questions = [
                    Question(
                        question: "Siempre que se aplica una fuerza sobre un objeto y este se mueve, se producirá un trabajo sobre el mismo. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Solamente las fuerzas que tienen la misma dirección que el movimiento son capaces de producir trabajo.  ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Solamente la fuerza resultante sobre un objeto es capaz de producir trabajo.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "El trabajo es un vector con la misma dirección y sentido que el desplazamiento del objeto. ",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "para subir una cubeta hasta un segundo piso se usan dos métodos, una rampa sin fricción y una cuerda amarrada a la cubeta que la eleva verticalmente, se realiza menor trabajo cuando se usa la rampa.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al caer un objeto, el trabajo realizado por el peso tiene signo",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fricción nunca realiza trabajo.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "para un auto que se mueve con cierta velocidad un trabajo positivo implica aumento de velocidad.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
            else if n == 1
            {
                questions = [
                    Question(
                        question: "Si un auto se mueve con velocidad constante, el trabajo neto es cero.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La Normal es una fuerza que en ningún caso puede producir trabajo.",
                        answers: ["True", "False","N/A","N/A"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En una superficie con fricción, una persona aplica a un cuerpo de masa 10 kg una fuerza de 20 N de tal modo que mantiene una velocidad constante y lo mueve 1 metro, el trabajo realizado sobre el bloque por la fuerza de rozamiento es, comparado con el desarrollado por la fuerza:",
                        answers: ["igual", "igual pero negativo","mayor","no se puede comparar"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La fuerza “A” de 5 N y la fuerza “B” de 40 N empujan dos cuerpos en la misma dirección y recorren la misma distancia, entonces podemos afirmar que la fuerza “A” realizó un trabajo:",
                        answers: ["mayor que la fuerza “B”", "menor que la fuerza “B”","igual que la fuerza “B”","es independiente de la fuerza"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una persona camina horizontalmente mientras sostiene cargada una caja aplicándole una fuerza hacia arriba, que es igual al peso de la misma. Entonces el trabajo que realiza es:",
                        answers: ["igual cero", "positivo","negativo","no se puede determinar"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Se define como la rapidez con la que se realiza el trabajo:",
                        answers: ["Aceleración", "Potencia","Energía","Fricción"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Dos máquinas, “A” y “B realizan cierto trabajo (W) a distintos tiempos. Si la máquina “A” realiza el trabajo en el doble del tiempo que la máquina “B”, ¿cómo es la potencia de “A” con respecto a la potencia de “B”?",
                        answers: ["El doble", "La mitad","La cuarta parte","Son iguales"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una máquina realiza un trabajo en un determinado tiempo. Si por alguna circunstancia la máquina logra realizar el trabajo al triple de su valor inicial, ¿cómo varió la potencia?.",
                        answers: ["Aumenta 3 veces", "Disminuye 1/3","Aumenta al doble","No cambia"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Para un cuerpo que se mueve sobre una superficie en que existe roce, ¿qué característica tiene el trabajo realizado por la fuerza de fricción?, justifique",
                        answers: ["No es significativo", "El trabajo tiene un sentido positivo","W = f . d . Cos(180)","W = f . d . Cos(0)"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un motor realiza un trabajo W en un tiempo t desarrollando una potencia P, y otro motor realiza el mismo trabajo en el doble del tiempo, ¿cuántas veces mayor o menor es la potencia que desarrolla el segundo motor?",
                        answers: ["1 vez mayor", "2 veces menor","2 veces mayor ","4 veces menor"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                    
                    
                ]
            }
            else if n == 2
            {
                questions = [
                    Question(
                        question: "Se realiza trabajo sobre un objeto:",
                        answers: ["A", "B","C","D"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "T_OP_1")),
                    Question(
                        question: "La potencia es la fuerza necesaria para mover un objeto. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al realizar una misma cantidad de trabajo, a mayor tiempo, mayor potencia de la máquina.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La potencia se calcula con la multiplicación de el trabajo desarrollado por el tiempo necesario para hacerlo. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Comparada contra otra máquina, una máquina hace el doble de trabajo en la mitad del tiempo, por lo tanto su potencia es cuatro veces mayor.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Los joules/segundo son unidades de potencia. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Un par de grúas A y B suben masas iguales “A” lo hace con mayor velocidad, pero ambas llegan a la misma altura, por lo tanto realizan el mismo trabajo y tienen la misma potencia.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Una máquina realiza un trabajo “W” en un tiempo “t”, para aumentar la potencia es necesario aumentar el trabajo y el tiempo necesario para realizarlo. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Si una máquina hace el doble de trabajo en el doble de tiempo, entonces su potencia no cambio.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Los Kilowwatt son unidades de potencia. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La potencia es un vector cuyas unidades en el sistema internacional son los watts.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
            else if n == 3
            {
                questions = [
                    Question(
                        question: "Una pelota se encuentra a cierta altura y es dejada caer. ¿Cómo es la Energía total en la parte más alta con respecto a un instante antes de chocar contra el suelo?",
                        answers: ["Mayor", "Menor","Iguales","No se puede saber."],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "¿Cómo es el comportamiento con respecto a las Energías de una pelota de béisbol si es lanzada verticalmente hacia arriba hasta que llega al punto más alto?",
                        answers: ["A", "B","C","D"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "T_OP_2")),
                    Question(
                        question: "-¿En qué punto es mayor la Energía Cinética de una esfera que es dejada caer desde un edificio de 10 metros?",
                        answers: ["En la parte más alta", "En la mitad de su recorrido","Justo antes de chocar contra el suelo","Después de chocar contra el suelo"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "T_OP_2")),
                    Question(
                        question: "De acuerdo al principio de conservación de la energía, ¿cómo varían la energía potencial y la cinética cuando un objeto va cayendo?",
                        answers: ["A", "B","C","D"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "T_op_3")),
                    Question(
                        question: "En el punto más alto, ¿cómo es la energía potencial (U) y la cinética (K)?",
                        answers: ["U=máxima; K=0", "U=0 ; K=máxima","U=máxima;  K=máxima","U=0; K=0"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "T_op_3")),
                    Question(
                        question: "Una piedra es lanzada verticalmente hacia arriba, cuál de las siguientes oraciones es la correcta?",
                        answers: ["A", "B","C","D"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "T_OP_4")),
                    Question(
                        question: "Una piedra es lanzada verticalmente hacia arriba, cuál de las siguientes oraciones es la correcta?",
                        answers: ["A", "B","C","D"],
                        correctAnswer: 2,
                        problemiamge: #imageLiteral(resourceName: "T_OP_4"))
                    
                ]
            }
            else if n == 4
            {
                questions = [
                    Question(
                        question: "La energía potencial depende de la velocidad y la cinética de la altura",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al duplicar la altura de un objeto, también se duplica su energía potencial. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al duplicar la velocidad de un cuerpo, también se duplica su energía cinética.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Cuando un objeto cae va disminuyendo su energía cinética y aumentando la potencial. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "En ningún caso, dos objetos de diferente masa tendrán la misma energía potencial",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "La energía cinética es un vector que tiene la misma dirección que la velocidad que la produce.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al comparar la energía cinética entre dos autos uno de ellos con el doble de la masa del otro, encontramos que el de mayor masa tiene el doble de energía cinética.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 0,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Al comparar la energía cinética entre dos autos con la misma masa, pero uno de ellos con el doble de velocidad que el otro, encontramos que el de mayor velocidad tiene el doble de energía cinética. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Bajo ninguna circunstancia un automóvil y un camión de mayor masa podrán tener la misma energía cinética.",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross")),
                    Question(
                        question: "Unicamente los objetos que se mueven con velocidad constante tienen energía cinética. ",
                        answers: ["True", "False","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
        }
        else if tema == 5
        {
            if n == 0
            {
                questions = [
                    
                    Question(
                        question: "No hay preguntas disponibles:",
                        answers: ["NA", "NA","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
            else if n == 1
            {
                questions = [
                    Question(
                        question: "No hay preguntas disponibles:",
                        answers: ["NA", "NA","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
            else if n == 2
            {
                questions = [
                    
                    Question(
                        question: "No hay preguntas disponibles:",
                        answers: ["NA", "NA","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
            else if n == 3
            {
                questions = [
                    
                    Question(
                        question: "No hay preguntas disponibles:",
                        answers: ["NA", "NA","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                ]
            }
            else if n == 4
            {
                questions = [
                    Question(
                        question: "No hay preguntas disponibles:",
                        answers: ["NA", "NA","NA","NA"],
                        correctAnswer: 1,
                        problemiamge: #imageLiteral(resourceName: "cross"))
                    
                ]
            }
        }
    }
    
    
    var questions: [Question]!
    var currentQuestion: Question?
    var currentQuestionPos = 0
    var noCorrect = 0
    var tema = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InicializarPreguntas()
        currentQuestion = questions[0]
        setQuestion()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lblQuestion: UITextView!
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var lblProgress: UILabel!
    
    
    @IBAction func sumbitAnswer0(_ sender: Any) {
        checkAnswer(idx: 0)
    }
    
    @IBAction func sumbitAnswer1(_ sender: Any) {
        checkAnswer(idx: 1)
    }
    
    
    @IBAction func sumbitAnswer2(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    
    @IBAction func sumbitAnswer3(_ sender: Any) {
        checkAnswer(idx: 3)
    }
    
    func checkAnswer(idx: Int) {
        if(idx == currentQuestion!.correctAnswer) {
            noCorrect += 1
        }
        loadNextQuestion()
    }
    
    func loadNextQuestion() {
        // Show next question
        if(currentQuestionPos + 1 < questions.count) {
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
            // If there are no more questions show the results
        } else {
            performSegue(withIdentifier: "Result", sender: nil)
        }
        
    }
    func setQuestion() {
        lblQuestion.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        lblProgress.text = "\(currentQuestionPos + 1) / \(questions.count)"
        imageProblem.image = currentQuestion?.problemiamge
        
        if imageProblem.image == #imageLiteral(resourceName: "cross"){
            imageProblem.isHidden = true
        }
        else{
            imageProblem.isHidden = false
        }
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "Result") {
            let vc = segue.destination as! ViewResultados
            vc.noCorrect = noCorrect
            vc.total = questions.count
        }
        
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        
        return UIInterfaceOrientationMask.landscape
    }
    override var shouldAutorotate: Bool{
        
        return false
    }
    
}


