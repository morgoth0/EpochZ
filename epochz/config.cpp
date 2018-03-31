class CfgPatches {
	class epochz {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {
			"Ryanzombies",
			"ryanzombiesfunctions",
			"Ryanzombiesanims",
			"Ryanzombiesfaces"
		};
	};
};

class CfgFunctions {
	class epochz {
		class epochz {
			file = "epochz\init";
			class init {
				postInit = 1;
			};
		};
	};
};