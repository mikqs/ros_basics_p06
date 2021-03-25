
"use strict";

let CheckWaypointReached = require('./CheckWaypointReached.js')
let AddWaypoint = require('./AddWaypoint.js')
let GetWaypoints = require('./GetWaypoints.js')
let CurrentWaypoint = require('./CurrentWaypoint.js')
let RemoveWaypoint = require('./RemoveWaypoint.js')
let SetWaypoints = require('./SetWaypoints.js')

module.exports = {
  CheckWaypointReached: CheckWaypointReached,
  AddWaypoint: AddWaypoint,
  GetWaypoints: GetWaypoints,
  CurrentWaypoint: CurrentWaypoint,
  RemoveWaypoint: RemoveWaypoint,
  SetWaypoints: SetWaypoints,
};
