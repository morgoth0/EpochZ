// EpochZ 1.0 by Grahame, nAtOeD and Drokz //
// Based on ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec //

// Chances for each group to spawn relative to the other groups.

//Do not set value to 0, comment out the line and adjust the commas instead.

// Example group
/*
GroupName = [
[walkerCivilians,	100],
[walkerSoldiers,	50],
[slowCivilians,		100],
[slowSoldiers,		50],
[mediumCivilians,	10],
[mediumSoldiers,	5],
[fastCivilians,		5],
[fastSoldiers,		3],
[crawlers,			10],
[spiders,			10],
[boss,				1]
];
*/

Easy = [
[walkerCivilians,	2],
//[walkerSoldiers,	1],
[slowCivilians,		2]
//[slowSoldiers,		1]
//[crawlers,		1]
];

MediumMix = [
[walkerCivilians,	100],
[walkerSoldiers,	55],
[slowCivilians,		100],
[slowSoldiers,		50]
//[mediumCivilians,	5],
//[mediumSoldiers,	5],
//[fastCivilians,		5],
//[fastSoldiers,		3],
//[crawlers,			5]
];

MediumMil = [
[walkerSoldiers,	25],
[slowSoldiers,		50]
//[mediumSoldiers,	10],
//[fastSoldiers,		3],
//[crawlers,			2]
];

MediumCiv = [
[walkerCivilians,	25],
[slowCivilians,		50]
//[mediumSoldiers,	5],
//[fastCivilians,		2],
//[crawlers,			2]
];

Hard = [
[walkerCivilians,	25],
[walkerSoldiers,	25],
[slowCivilians,	    50],
[slowSoldiers,	    50]
//[mediumCivilians,	30],
//[mediumSoldiers,	20],
//[fastCivilians,		10],
//[fastSoldiers,		5],
//[crawlers,			5]
//[spiders,			15]
];

Hardcore = [
[mediumCivilians,	25],
[mediumSoldiers,	25],
//[fastCivilians,	    10],
//[fastSoldiers,	    10],
[crawlers,		    1]
//[spiders,			3]
];