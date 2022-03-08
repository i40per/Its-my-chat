//
//  SliderSlides.swift
//  Its my chat
//
//  Created by MacBook on 07.03.2022.
//

import Foundation

class SliderSlides {
    
    func getSlides()->[Slides] {
        var slides: [Slides] = []
        
        let slide1 = Slides(id: 1, text: "He was disappointed to discover that his brothers were peddlers, not millionaires in New York. But with no skill or trade, and only a few words of English, he was forced to become a peddler as well.", img: #imageLiteral(resourceName: "slide1"))
        let slide2 = Slides(id: 2, text: "He was disappointed to discover that his brothers were peddlers, not millionaires in New York. But with no skill or trade, and only a few words of English, he was forced to become a peddler as well.", img: #imageLiteral(resourceName: "slide2"))
        let slide3 = Slides(id: 3, text: "He was disappointed to discover that his brothers were peddlers, not millionaires in New York. But with no skill or trade, and only a few words of English, he was forced to become a peddler as well.", img: #imageLiteral(resourceName: "slide3"))
        
        slides.append(slide1)
        slides.append(slide2)
        slides.append(slide3)
        
        return slides
    }
}
