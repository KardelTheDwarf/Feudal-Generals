function getBuildingGhostColor(x, y) {
    if (isValidBuildingSpot(x, y)) {
        return c_green; // Verde se for um local válido
    } else {
        return c_red; // Vermelho se não for válido
    }
}
