//
//  ViewController.swift
//  Exercicios_01
//
//  Created by Diego Fonseca on 18/07/16.
//  Copyright © 2016 Diego Fonseca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func calculaFatorial (valor : Int) -> Int
    {
        if (valor <= 1)
        {
            return 1
        }
        return valor * calculaFatorial(valor - 1)
    }
    
    func calculaMedia (nota1 : Float, nota2 : Float, nota3 : Float, peso1 : Float, peso2 : Float, peso3 : Float) -> Float
    {
        
    return (((nota1 * peso1) + (nota2 * peso2) + (nota3 * peso3)) / (peso1 + peso2 + peso3))
        
    }
    
    func calculaFibonacci (number : Int) -> (Int)
    {
        if number < 2
        {
            return number
        }
        else
        {
            return calculaFibonacci(number - 1) + calculaFibonacci(number - 2)
        }
    }
    
    //func calculaSomaIntervalo (valor1 : Int, valor2 : Int) -> Int
    //{
    //  var somaIntervalo : Int = 0
    //  var num1 : Int = valor1
    //
    //  while (num1 <= valor2)
    //  {
    //    somaIntervalo += num1;
    //    num1 += 1
    //  }
    //    return somaIntervalo
    //}
    
    func calculaSomaIntervalo (valor1 : Int, valor2 : Int) -> Int
    {
      var somaIntervalo : Int = 0
      var num1 : Int
    
        for num1=valor1; num1<=valor2; num1 += 1
      {
        somaIntervalo += num1;
      }
        return somaIntervalo
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Exercício 1 - utilizando o comando print, imprima todos os números de 1 a 100 separados por um espaço em branco

        print ("Exercício 1")
        print (" ")
        
        var myString = ""
        
        for ex001 in 1...100
        {
            myString = "\(myString) \(ex001)"
        }
        print(myString)

        
        //Exercício 2 - Utilizando o comando print, imprima os múltiplos de 3 entre 1 e 100 separados por um espaço em branco
        
        print (" ")
        print ("Exercício 2")
        print (" ")

        
        var myString2 = ""
        var multiplo3 : Int
        
        for ex002 in 1...100
        {
        multiplo3 = ex002 % 3
            if multiplo3 == 0
            {
            myString2 = "\(myString2) \(ex002)"
            }
            else
            {
            }
        }
        print (myString2)
        
        
        //Exercício 3 - Utilizando o comando print, imprima a soma de todos os números pares de 50 a 100 (incluíndo-o). O resultado deve ser 1950
        
        print (" ")
        print ("Exercício 3")
        print (" ")
        
        var soma = 0
        
        for ex003 in 50...100
        {
            if (ex003 % 2 == 0)
            {
            soma += ex003
            }
        }
        print ("A soma dos pares é: \(soma)")
        
        
        //Exercício 4 - Escreva uma função que retorne o fatorial do número passado como parâmetro. Para o valor 4 o resultado deve ser 24
        
        print (" ")
        print ("Exercício 4")
        print (" ")
        
        let fatorar = calculaFatorial(4)
        
        print("\(4)! = \(fatorar)")
    
 
        //Exercício 5 - Escreva uma função que receba 6 parâmetros (3 notas, 3 pesos) e mostre a média. Para os parâmetros (10, 9, 8, 3, 2, 5) o resultado deve ser 8.8
        
        print (" ")
        print ("Exercício 5")
        print (" ")
        
        let media : Float = calculaMedia(10,nota2: 9,nota3: 8,peso1: 3,peso2: 2,peso3: 5)
        
        print ("A média é: \(media)")
        
        
        //Exercício 6 - Utilizando o comando print, imprima os 10 primeiros números da série Fibonacci. 
        
        print (" ")
        print ("Exercício 6")
        print (" ")
        
        var myString3 = ""
        var total : Int
        
        for i in 1...10
        {
            total = calculaFibonacci(i)
            myString3 = ("\(myString3) \(total)")
        }
        print ("\(myString3)")
        

        //Exercício 7 - Escreva uma função que receba 2 parâmetros e retorne a soma do intervalo de valores destes parâmetros. Para os paâmetros 5 e 10 o resultado deve ser 45
        
        print (" ")
        print ("Exercício 7")
        print (" ")
        
        let intervalo : Int = calculaSomaIntervalo(5, valor2: 10)
        
        print ("A soma do intervalo é: \(intervalo)")
        
        
        //Exercício 8 - Escreva um programa que, dada uma variável x, temos y de acordo com a seguinte regra: 1. se x é par: y = x /2                                                                         2. se x é impar: y = 3 * x + 1                                                                  3. imprime y                                                                                                                                                                                                           
        
        //O programa deve então jogar o valor de y em x e continuar até que y tenha o valor final de 1. Por exemplo, para x = 13 a saída será: 40 / 20 / 10/ 5 / 16 / 8 / 4 / 2 / 1. Fazer este mesmo exercício usando os comandos if e switch.
        
        print (" ")
        print ("Exercício 8 com if")
        print (" ")
        
        var x : Int = 13
        var y : Int
        
        repeat
        {
        
            if (x == 1)
            {
                break
            }
            if (x % 2 == 0)
            {
                y = x / 2
                print("\(y)")
                x = y
            }
            else
            {
                y = 3 * x + 1
                print ("\(y)")
                x = y
            }
        }
        while (x != 1)
        
        print (" ")
        print ("Exercício 8 com switch")
        print (" ")
        
        var x2 : Int = 13
        var y2 : Int
        
        repeat
        {
            switch (x2 % 2)
            {
            case 0:
                y2 = x2 / 2
                print("\(y2)")
                x2 = y2
            case 1:
                y2 = 3 * x2 + 1
                print ("\(y2)")
                x2 = y2
            default:
                break
            }
        }
        while (x2 != 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

