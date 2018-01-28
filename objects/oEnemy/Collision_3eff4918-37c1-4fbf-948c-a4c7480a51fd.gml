global.towerHealth -= 2; // amount of damage given
if (global.towerHealth <= 0) {
	//end game / reset	
	exit;
}
instance_destroy();	