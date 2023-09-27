function isValidBuildingSpot(x, y) {
    // Verificar se o local está dentro dos limites da cidade
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        return false;
    }
    
    // Verificar se não há outros edifícios no caminho
    var building_collision = instance_place(x, y, obj_designation_slot);
    if (building_collision != noone) {
        return false;
    }

    // Para edifícios como "Foraging Spot", eles devem ser colocados em cima de um obj_village_resource
    if (selected_building == "ForagingSpot") {
        var resource_spot = instance_place(x, y, obj_village_resource);
        if (resource_spot == noone || resource_spot.resource_type != "Foraging") {
            return false;
        }
    }
    
    // Se passou em todas as verificações, o local é válido
    return true;
}
