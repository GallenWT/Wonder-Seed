//
//  WaterSphere.swift
//  Nano1ShakeFeature
//
//  Created by Bryan Vernanda on 01/05/24.
//

import Foundation
import SpriteKit

class WaterSphere: SKNode {
    var collide: Bool = false
    init(_ num: Bool, image: SKSpriteNode, _ pos: CGPoint) {
        super.init()
        
        //self is needed since declaring using var SKSpritenode will cause spritekit can't detect the same node individually and it's a big problem.
        self.collide = num
        
        self.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "waterSphere"), size: CGSize(width: image.size.width, height: image.size.height))
        
        self.position = pos
        self.zPosition = 2
        
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: image.size.width/5)
        self.physicsBody?.categoryBitMask = CollisionTypes.waterSphere.rawValue
        self.physicsBody?.contactTestBitMask = CollisionTypes.plant.rawValue
        self.physicsBody?.collisionBitMask = CollisionTypes.wall.rawValue
        self.addChild(image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func checkWater() -> Bool {
        return self.collide
    }
}
