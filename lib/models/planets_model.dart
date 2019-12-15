class SwapPlanet {
    String name;
    String rotationPeriod;
    String orbitalPeriod;
    String diameter;
    String climate;
    String gravity;
    String terrain;
    String surfaceWater;
    String population;
    List<String> residents;
    List<String> films;
    DateTime created;
    DateTime edited;
    String url;

    SwapPlanet({
        this.name,
        this.rotationPeriod,
        this.orbitalPeriod,
        this.diameter,
        this.climate,
        this.gravity,
        this.terrain,
        this.surfaceWater,
        this.population,
        this.residents,
        this.films,
        this.created,
        this.edited,
        this.url,
    });

    factory SwapPlanet.fromJson(Map<String, dynamic> json) => SwapPlanet(
        name: json["name"] == null ? null : json["name"],
        rotationPeriod: json["rotation_period"] == null ? null : json["rotation_period"],
        orbitalPeriod: json["orbital_period"] == null ? null : json["orbital_period"],
        diameter: json["diameter"] == null ? null : json["diameter"],
        climate: json["climate"] == null ? null : json["climate"],
        gravity: json["gravity"] == null ? null : json["gravity"],
        terrain: json["terrain"] == null ? null : json["terrain"],
        surfaceWater: json["surface_water"] == null ? null : json["surface_water"],
        population: json["population"] == null ? null : json["population"],
        residents: json["residents"] == null ? null : List<String>.from(json["residents"].map((x) => x)),
        films: json["films"] == null ? null : List<String>.from(json["films"].map((x) => x)),
        created: json["created"] == null ? null : DateTime.parse(json["created"]),
        edited: json["edited"] == null ? null : DateTime.parse(json["edited"]),
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "rotation_period": rotationPeriod == null ? null : rotationPeriod,
        "orbital_period": orbitalPeriod == null ? null : orbitalPeriod,
        "diameter": diameter == null ? null : diameter,
        "climate": climate == null ? null : climate,
        "gravity": gravity == null ? null : gravity,
        "terrain": terrain == null ? null : terrain,
        "surface_water": surfaceWater == null ? null : surfaceWater,
        "population": population == null ? null : population,
        "residents": residents == null ? null : List<dynamic>.from(residents.map((x) => x)),
        "films": films == null ? null : List<dynamic>.from(films.map((x) => x)),
        "created": created == null ? null : created.toIso8601String(),
        "edited": edited == null ? null : edited.toIso8601String(),
        "url": url == null ? null : url,
    };
}