//
//  BackgroundShapes.swift
//  BackgroundShapes
//
//  Created by Logan Koshenka on 9/16/21.
//

import SwiftUI

struct BackgroundShapes: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 0.050347208976745605, green: 0.14063718914985657, blue: 0.4166666567325592, alpha: 1)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), location: 0.5409181714057922),
                                    .init(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), location: 1)]),
                startPoint: UnitPoint(x: 0.5, y: -8.040613114788646e-17),
                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)).ignoresSafeArea()
            
            Wave3()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.6413271333341239, y: 0.5407481859687537),
                        endPoint: UnitPoint(x: 0.6711129868244238, y: 0.40499807971638724)))
                .frame(width: 2031.5, height: 968.6, alignment: .center)
                .offset(x: -0, y: 20)
            
            Wave4()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), location: 0.48761284351348877),
                                            .init(color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5587045027799772, y: 0.17885617923059305),
                        endPoint: UnitPoint(x: 0.4878167129160812, y: 0.6770096058916008)))
                .frame(width: 2054, height: 1131, alignment: .center)
                .offset(x: -20, y: 210)
            
//            GlobeShape()
//                .fill(RadialGradient(
//                    gradient: Gradient(stops: [
//                                        .init(color: Color(#colorLiteral(red: 0.9098039269447327, green: 0.2235294133424759, blue: 0.6509804129600525, alpha: 1)), location: 0),
//                                        .init(color: Color(#colorLiteral(red: 0.9803921580314636, green: 0.9176470637321472, blue: 0.6470588445663452, alpha: 1)), location: 0.9780701994895935)]),
//                    center: UnitPoint(x: 0.466398182976454, y: 0.5695231060388317),
//                    startRadius: 2.041053227179221,
//                    endRadius: 149.38707692701118
//                )).opacity(0.5)
//                .frame(width: 569, height: 289.85)
//                .offset(x: 60, y: -190)
            
//            Circle()
//                .fill(RadialGradient(
//                    gradient: Gradient(stops: [
//                                        .init(color: Color(#colorLiteral(red: 0.9098039269447327, green: 0.2235294133424759, blue: 0.6509804129600525, alpha: 1)), location: 0),
//                                        .init(color: Color(#colorLiteral(red: 0.9795185924, green: 0.9158585668, blue: 0.6477716565, alpha: 1)), location: 0.9780701994895935)]),
//                    center: UnitPoint(x: 0.31886224340913316, y: 0.4386227577534223),
//                    startRadius: 1.4844146370558098,
//                    endRadius: 148.4514826684042
//                )).opacity(0.9)
//                .frame(width: 312, height: 312)
//                .offset(x: 10.0, y: -200)
            
            RoundedRectangle(cornerSize: .zero)
                .fill(RadialGradient(
                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), location: 0.9780701994895935)]),
                    center: UnitPoint(x: 0.31886224340913316, y: 0.4386227577534223),
                    startRadius: 1.4844146370558098,
                    endRadius: 148.4514826684042
                ))
                .cornerRadius(30)
                .opacity(0.5)
                .frame(width: 300, height: 300)
                .offset(x: 140, y: -200)
                .rotationEffect(.degrees(90))
                .blur(radius: 7)
            
//            Circle()
//                .fill(RadialGradient(
//                    gradient: Gradient(stops: [
//                                        .init(color: Color(#colorLiteral(red: 0.125, green: 0.9475000500679016, blue: 1, alpha: 1)), location: 0),
//                                        .init(color: Color(#colorLiteral(red: 0.7760988473892212, green: 0.32083332538604736, blue: 1, alpha: 1)), location: 0.9780701994895935)]),
//                    center: UnitPoint(x: 0.8045112209993526, y: 0.46867171552365405),
//                    startRadius: 1.54594135705969,
//                    endRadius: 154.594135705969
//                )).opacity(0.5)
//                .frame(width: 135, height: 135)
//                .blur(radius: 30)
//                .offset(x: 120, y: -195)
            
            Ellipse()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.9764705896, green: 0.8941176534, blue: 0.650980413, alpha: 0)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), location: 0.14624865353107452),
                                            .init(color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: 2.2946122541118996e-17),
                        endPoint: UnitPoint(x: 0.4999999999999998, y: 1)))
                .frame(width: 252, height: 169)
                .offset(x: -50, y: -285)
                .blur(radius: 30)
        }
    }
}

struct BackgroundShapes_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundShapes()
    }
}

struct Wave3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48097*width, y: 0.32636*height))
        path.addCurve(to: CGPoint(x: 0.36565*width, y: 0.20908*height), control1: CGPoint(x: 0.43356*width, y: 0.26893*height), control2: CGPoint(x: 0.40994*width, y: 0.22947*height))
        path.addCurve(to: CGPoint(x: 0.19587*width, y: 0.0161*height), control1: CGPoint(x: 0.32136*width, y: 0.18869*height), control2: CGPoint(x: 0.30624*width, y: 0.04203*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.0161*height), control1: CGPoint(x: 0.0855*width, y: -0.00984*height), control2: CGPoint(x: 0.00837*width, y: -0.00037*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.93667*height), control1: CGPoint(x: 0, y: 0.10492*height), control2: CGPoint(x: 0, y: 0.93667*height))
        path.addLine(to: CGPoint(x: 0.99975*width, y: 0.99959*height))
        path.addLine(to: CGPoint(x: 0.99975*width, y: 0.62342*height))
        path.addCurve(to: CGPoint(x: 0.81865*width, y: 0.52745*height), control1: CGPoint(x: 0.99975*width, y: 0.62342*height), control2: CGPoint(x: 0.85162*width, y: 0.54706*height))
        path.addCurve(to: CGPoint(x: 0.63644*width, y: 0.43206*height), control1: CGPoint(x: 0.78568*width, y: 0.50784*height), control2: CGPoint(x: 0.73796*width, y: 0.45291*height))
        path.addCurve(to: CGPoint(x: 0.48097*width, y: 0.32636*height), control1: CGPoint(x: 0.53492*width, y: 0.41122*height), control2: CGPoint(x: 0.50556*width, y: 0.35615*height))
        path.closeSubpath()
        return path
    }
}

struct Wave4: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.52324*width, y: 0.28073*height))
        path.addCurve(to: CGPoint(x: 0.44583*width, y: 0.23519*height), control1: CGPoint(x: 0.49574*width, y: 0.27407*height), control2: CGPoint(x: 0.47639*width, y: 0.26606*height))
        path.addCurve(to: CGPoint(x: 0.32655*width, y: 0.17197*height), control1: CGPoint(x: 0.40765*width, y: 0.19663*height), control2: CGPoint(x: 0.38571*width, y: 0.17197*height))
        path.addCurve(to: CGPoint(x: 0.19389*width, y: 0.09195*height), control1: CGPoint(x: 0.2674*width, y: 0.17197*height), control2: CGPoint(x: 0.23587*width, y: 0.12089*height))
        path.addCurve(to: CGPoint(x: 0.08824*width, y: 0.01768*height), control1: CGPoint(x: 0.16004*width, y: 0.06862*height), control2: CGPoint(x: 0.15275*width, y: 0.03537*height))
        path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 0.02373*width, y: 0), control2: CGPoint(x: 0, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.92927*height), control1: CGPoint(x: 0, y: 0.07677*height), control2: CGPoint(x: 0, y: 0.92927*height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width, y: 0.46508*height))
        path.addCurve(to: CGPoint(x: 0.62207*width, y: 0.34836*height), control1: CGPoint(x: width, y: 0.46508*height), control2: CGPoint(x: 0.65007*width, y: 0.35544*height))
        path.addCurve(to: CGPoint(x: 0.56828*width, y: 0.34085*height), control1: CGPoint(x: 0.59408*width, y: 0.34129*height), control2: CGPoint(x: 0.5856*width, y: 0.35695*height))
        path.addCurve(to: CGPoint(x: 0.52324*width, y: 0.28073*height), control1: CGPoint(x: 0.54817*width, y: 0.32216*height), control2: CGPoint(x: 0.55075*width, y: 0.28738*height))
        path.closeSubpath()
        return path
    }
}

struct GlobeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.39434*width, y: 0.78925*height))
        path.addCurve(to: CGPoint(x: 0.03803*width, y: 0.20227*height), control1: CGPoint(x: 0.11878*width, y: 1.08237*height), control2: CGPoint(x: -0.08852*width, y: 0.52322*height))
        path.addCurve(to: CGPoint(x: 0.32807*width, y: 0.08676*height), control1: CGPoint(x: 0.12121*width, y: -0.0087*height), control2: CGPoint(x: 0.21573*width, y: -0.06717*height))
        path.addCurve(to: CGPoint(x: 0.53031*width, y: 0.05588*height), control1: CGPoint(x: 0.41983*width, y: 0.2125*height), control2: CGPoint(x: 0.46209*width, y: 0.07248*height))
        path.addCurve(to: CGPoint(x: 0.84081*width, y: 0.17458*height), control1: CGPoint(x: 0.6503*width, y: 0.02668*height), control2: CGPoint(x: 0.67015*width, y: 0.17359*height))
        path.addCurve(to: CGPoint(x: 0.97297*width, y: 0.73255*height), control1: CGPoint(x: 1.01148*width, y: 0.17558*height), control2: CGPoint(x: 1.02549*width, y: 0.52334*height))
        path.addCurve(to: CGPoint(x: 0.71209*width, y: 0.97777*height), control1: CGPoint(x: 0.92046*width, y: 0.94176*height), control2: CGPoint(x: 0.79783*width, y: 1.04832*height))
        path.addCurve(to: CGPoint(x: 0.39434*width, y: 0.78925*height), control1: CGPoint(x: 0.54411*width, y: 0.83953*height), control2: CGPoint(x: 0.58126*width, y: 0.59044*height))
        path.closeSubpath()
        return path
    }
}

struct Shape04: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.00541*width, y: 0.49369*height))
        path.addCurve(to: CGPoint(x: 0.28115*width, y: 0.71962*height), control1: CGPoint(x: 0.03167*width, y: 0.71962*height), control2: CGPoint(x: 0.17769*width, y: 0.8247*height))
        path.addCurve(to: CGPoint(x: 0.6094*width, y: 0.71962*height), control1: CGPoint(x: 0.4212*width, y: 0.57737*height), control2: CGPoint(x: 0.52537*width, y: 0.50541*height))
        path.addCurve(to: CGPoint(x: 0.96393*width, y: 0.8786*height), control1: CGPoint(x: 0.71445*width, y: 0.98738*height), control2: CGPoint(x: 0.86441*width, y: 1.07943*height))
        path.addCurve(to: CGPoint(x: 0.74509*width, y: 0.19245*height), control1: CGPoint(x: 1.06344*width, y: 0.67778*height), control2: CGPoint(x: 0.92016*width, y: 0.32634*height))
        path.addCurve(to: CGPoint(x: 0.24613*width, y: 0), control1: CGPoint(x: 0.57001*width, y: 0.05857*height), control2: CGPoint(x: 0.38619*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.00541*width, y: 0.49369*height), control1: CGPoint(x: 0.03167*width, y: 0), control2: CGPoint(x: -0.01836*width, y: 0.28924*height))
        path.closeSubpath()
        return path
    }
}
