# CoordinateCheck

This is used to ckeck if a locaion is inside an array of coordinates array that builds polygon. 
```
CheckPoly().checkInPoly(lat: item.latitude!, long: item.longitude!, polyArray: Counties.milwaukee)
```

It also can use checkInCircle to check if a second location is with in a raduis around center location.
```
CheckPoly().checkInCircle(centerCoordinate: center, radius: 200, point: CLLocationCoordinate2D(latitude: $0.latitude!, longitude: $0.longitude!)
```
