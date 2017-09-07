class zade_boc {
	tag = "zade_boc";
	class commands {
		file = "BoC_Main\fnc\commands";
		class addChestpack {};
		class addItemToChestpack {};
		class addMagToChestpack {};
		class canAddItemToChestpack {};
		class Chestpack {};
		class ChestpackContainer {};
		class ChestpackItems {};
		class ChestpackMagazines {};
		class clearAllItemsFromChestpack {};
		class loadChestpack {};
		class removeChestpack {};
		class removeItemFromChestpack {};
		class removeMagFromChestpack {};
	};
	class utility	{
		file = "BoC_Main\fnc\utility";
		class actionOnBack {};
		class actionOnChest {};
		class actionSwap {};
		class backpackMagazines {};
		class copyRadioSettings {};
		class EHAnimDone {};
		class EHGetIn {};
		class EHGetOut {};
		class EHHandleDisconnect {};
		class EHKilled {};
		class pasteRadioSettings {};
	};
	class arsenal	{
		file = "BoC_Main\fnc\arsenal";
		class arsenalOpened {};
		class arsenal_onButtonClick {};
		class arsenal_updateUI {};
		//class arsenal_postInit {postInit = 1;};
	};
};
