//
//  UIButtonExtension.swift
//  ExtensionesApp
//
//  Created by Sofia Alejandra on 9/13/21.
//  Copyright © 2021 Sofia Alejandra. All rights reserved.
//

import UIKit

/*  Indicamos que creamos una extension.
    Aqui se indica que los metodos de esta extension solo afectaran a los botones (UIButton)
 */
extension UIButton{
    
    //Implementar bordes redondeados en botones
    func round(){
        
        /*  cornerRadius = curvatura de las esquinas del borde.
         
            cornerRadius = altura de boton / 2
         */
        layer.cornerRadius = 20
        
        // para evitar recortar mal la info dentro del boton si se viese afectada por redondear el borde
        clipsToBounds = true
        
    }
    
    //Efecto bounce
    func bounce(){
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(
                //Con scale haremos que el boton crezca 1.1
                scaleX: 1.1, y: 1.1) })
        {
            (completion) in UIView.animate(withDuration: 0.5, animations: {
                    self.transform = .identity
                })
        }
    }
    
    //Efecto shine
    func shine(){
        UIView.animate(withDuration: 0.5, animations: {
            //Aplicando canal alfa, al ponerle 0.5 lo volvemos 50% transparente
            self.alpha = 0.5 })
        { (completion) in
            UIView.animate(withDuration: 0.5, animations: {
                //Aplicando canal alfa, al ponerle 1 devolvemos la transparencia original
                self.alpha = 1
            })
        }
    }
    
    //Efecto jump
    func jump(){
        UIView.animate(withDuration: 0.5, animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        })
        { (completion) in
            UIView.animate(withDuration: 0.5, animations: {
                self.transform = .identity
            })
        }
    }
    
}

