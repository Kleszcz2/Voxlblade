return function(Object: Instance)
    local Ligt: PointLight = Object:FindFirstChildWhichIsA('PointLight')
    local Mesh: SpecialMesh = Object:FindFirstChildWhichIsA("SpecialMesh")
    local Particle: ParticleEmitter = Object:FindFirstChildWhichIsA('ParticleEmitter', true)
    
    if Object:IsA('MeshPart') then
        if Object.Name == 'Buni' then
            if Object.Bloody.Enabled == false and Object.Corrupt.Enabled == false and Object.Magical.Enabled == false and Object.Legendary.Enabled == false then
                return {
                    Color = Color3.fromRGB(255, 255, 255),
                    Name = 'Buni'
                }
            elseif Object.Bloody.Enabled == true and Object.Corrupt.Enabled == false and Object.Magical.Enabled == false and Object.Legendary.Enabled == false then
                return {
                   Color = Color3.fromRGB(255, 0, 0),
                   Name = 'Bloody Buni'
                }
            elseif Object.Bloody.Enabled == false and Object.Corrupt.Enabled == true and Object.Magical.Enabled == false and Object.Legendary.Enabled == false then
                return {
                    Color = Color3.fromRGB(128, 128, 128),
                    Name = 'Corrupt Buni'
                }
            elseif Object.Bloody.Enabled == false and Object.Corrupt.Enabled == false and Object.Magical.Enabled == true and Object.Legendary.Enabled == false then
                return {
                    Color = Color3.fromRGB(102, 102, 255),
                    Name = 'Magical Buni'
                }
            elseif Object.Bloody.Enabled == false and Object.Corrupt.Enabled == false and Object.Magical.Enabled == false and Object.Legendary.Enabled == true then
                return {
                    Color = Color3.fromRGB(255, 255, 0),
                    Name = 'Legendary Buni'
                }
            end
        end
    end
end
