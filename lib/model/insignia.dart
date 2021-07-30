class Insignia {
  String branch;  // Army, Navy, ...
  String eo;      // E=>enlisted, O=>officer
  String level;   // grade (1-11, typically)
  String rank;    // name of tank
  String type;    // type of insignia (collar, shoulder-board, shoulder-side...)
  String imageResource;

  // Insignia._();

  Insignia(this.branch, this.eo, this.level, this.rank, this.imageResource, [this.type="collar"]);

  String eoLevel() {
    if (level != "") {
      return eo+"-"+level;
    } else {
      return eo;
    }
  }

}

