//
//  File.swift
//  
//
//  Created by mwcs01 on 6/7/19.
//

import Foundation
import MapKit

public class CheckPoly {
    public init() {}
    public func checkInPoly(lat: Double, long: Double, polyArray: [CLLocationCoordinate2D]) -> Bool {
        let location = CLLocationCoordinate2D(latitude: lat, longitude: long)
        var points = polyArray
        let polygon = MKPolygon(coordinates: &points, count: points.count)
        let polygonRenderer = MKPolygonRenderer(polygon: polygon)
        let mapPoint: MKMapPoint = MKMapPoint(location)
        let polygonViewPoint: CGPoint = polygonRenderer.point(for: mapPoint)
        if polygonRenderer.path.contains(polygonViewPoint) {
            return true
        }
        return false
    }
    
    public func checkInCircle(centerCoordinate: CLLocationCoordinate2D, radius: Double, point: CLLocationCoordinate2D) -> Bool {
        let itemPoint: MKMapPoint = MKMapPoint(point)
        let circle = MKCircle(center: centerCoordinate, radius: radius)
        if circle.boundingMapRect.contains(itemPoint) {
            return true
        }
        return false
    }
}
