class MobaConquestMapInfo extends AOCMapInfo;

//Blue's HQ; when this is destroyed, blue loses. An AOCStaticMeshActor (probably want to make it a MobaHealingStaticMeshActor though)
var() AOCStaticMeshActor BlueHQ;
//Red's HQ; when this is destroyed, red loses. An AOCStaticMeshActor (probably want to make it a MobaHealingStaticMeshActor though)
var() AOCStaticMeshActor RedHQ;