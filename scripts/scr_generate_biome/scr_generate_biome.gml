function generate_biome(y) {
    if (y < grid_height * 0.2) {
        return "snow";
    } else if (y < grid_height * 0.4) {
        return "snow";
    } else if (y < grid_height * 0.6) {
        return "grass";
    } else if (y < grid_height * 0.8) {
        return "mud";
    } else {
        return "sand";
    }
}