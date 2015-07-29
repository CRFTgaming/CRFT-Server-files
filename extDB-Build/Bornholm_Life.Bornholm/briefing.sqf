waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				These are considered exploits, and you will not be kicked, but banned.<br/><br/>

				1. Getting out of jail via any method other than paying bail or escaping via helicopter.<br/>
				2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
				3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
				4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
				5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/>
				6. New Life Rule means that if you die during an RP event, And if you die you cant return to that event till the next time. Players that dont follow this rule will be kicked.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
					
					Kavalla, Athira, Pyrgos (White Zones only)<br/>
					All Police HQs<br/>
					Main Rebel Outpost<br/>
					Rebel Outposts<br/>
					Fancy Shops and Black Market<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Consider this your one and only warning.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (See 'Exploits')<br/>
				4. Being kicked 3 or more times.<br/>
				5. VDM (Vehicle Death Match)<br/>
				6. RDM (Random Death Match)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Civilians can be arrested for looking in cops' backpacks/vehicles. Constantly doing this will result in your removal from the server.<br/>
				2. Civilians can be arrested for following cops in game in order to give away their position.<br/>
				3. Civilians or Rebels who take up arms to kill cops in town or elsewhere for no RP reason will be considered RDMing. See RDMing section.<br/>
				4. Following and or harassing cops for long periods of time will be considered griefing and/or spamming, and will result in your removal from the server.<br/>
				5. Actively blocking cops from doing their duties can lead to your arrest. Constantly doing this will result in your removal from the server.<br/>
				6. EMS is a neutral party. you ARE NOT allowed to kill them. If an EMS happens to get killed in a cross fire situation. Such as running into a hot zone and gets killed. This is not a violation. However the intentional killing of EMS is a violation.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Repeatedly pushing boats without permission.<br/>
				2. Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics.<br/>
				3. Purposefully running over swimmers/divers.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully ramming a helicopter into anything. Other helicopters, vehicles, buildings.<br/>
				2. Flying below 150m over the city constantly. Once is illegal, more than that you risk crashing into the city, thus against server rules.<br/>
				3. Stealing helicopters without proper warning and significant time for the driver to lock the vehicle. If they land and run away without locking, fine, if they just get out and you get in before they get a chance to lock it, no no.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully running people over (VRDM). There are accidents, and then there is going out of your way to run someone over.<br/>
				2. Purposefully throwing yourself in front of vehicles in order to die/get hurt.<br/>
				3. Ramming into other vehicles in order to cause an explosion.<br/>
				4. Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP.<br/>
				5. Stealing a vehicle just to crash it or otherwise destroy it.<br/>
				6. Purchasing multiple vehicles for the purpose of doing any of the above.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Side Chat may not be used to play music or otherwise micspam.<br/>
				2. Spamming any chat channel will result in your removal.<br/>
				4. Teamspeak channels are split up into areas for a reason. Cops must be in the cop channels at all times.<br/>
				5. Civilians cannot be in any cop channels on teamspeak in order to gather information on their location or movements. Civs caught doing this will be removed the channel. Repeat offenders can be kicked or banned from both the game and teamspeak.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Killing anyone without a roleplay cause.<br/>
				2. Declaring a rebellion is not a cause to kill anyone, even cops.<br/>
				3. Cops and civilians/rebels can only commence in a shootout if there are reasons relating to a crime.<br/>
				4. If you are killed in the crossfire of a fight, it is not RDM.<br/>
				5. Killing someone in an attempt to protect yourself or others is not RDMing.<br/>
				6. Shooting a player without giving reasonable time to follow demands is considered RDM.<br/><br/>
				
				These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				The New Life Rule applies to police and civilians.<br/><br/>
				
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>

				1. If you are killed you must wait 15 minutes before returning to the scene of your death.<br/>
				2. If you die during roleplay your past crimes are forgotten, but you also cannot seek revenge.<br/>
				3. If you are RDM'd, it is not a new life.<br/>
				4. If you manually respawn, it is not a new life.<br/>
				5. If you purposefully kill yourself to avoid roleplay, it is not a new life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				If an admin has to tell you that you are being a dick, you are doing dickish things.<br/>
				Causing others grief, disrupting roleplay, the list goes on.<br/>
				Just don't be a dick okay?<br/>
				This rule may be invoked at an admin's discretion.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Policy and Procedure, Rules",
				"
				This is the Rules and Ruglations of the A.P.D. All officers are required to follow this regardless of rank.<br/><br/>

				1.All members of the A.P.D. no matter the rank are required to be on TeamSpeak3 at all times in the respective channel for the server they are playing on! ( ts.epikgaming.net )​<br/><br/>

				2.All officers will spawn at the Athira HQ spawn point. Once spawned the officer will make it known via TS3 that they need a partner and a patrol district.​<br/>

				3.All officers will have a partner. Partners will be assigned at the restart of the server they are playing on. (Partner and district assignments will be done by the highest ranking officer on at the time.)​<br/>

				4.If there is an odd number of players the remaining officer will be placed with another partnered unit making them a 3 person team.​<br/>

				5.All partners will be assigned with a lethal and nonlethal officer according to player rank restrictions.<br/>

				6.All officers ranked Patrol Officer/Deputy or higher will have Static AA and AT/Hmg in their vehicle at all times. (This rule applies to land and air patrols.)​<br/>

				7.All officers are required to be in uniform with all necessary equipment in good working condition ready for duty.​<br/>

				8.All officers will wear the proper uniform assigned to them outlined in the uniform policy section.<br/>

				9.When an officer calls for backup. The nearest available unit(s) will respond appropriately to the situation.​<br/>

				10.When responding to an officer in need of assistance or shots fired call you will respond CODE 3.​<br/>

				11.While on the radio ( In the TeamSpeak3 channel) you will maintain strict communications at all times. All information will be kept relevant to police activities.​<br/>

				12.While during your tour of duty you have a situation where you are unsure of what to do. You will radio in for a supervisor ( Higher ranking officer) to show up on scene. The chain of command will be followed until a decision is made and the call is code 4.​<br/>

				13.All officers that have a RPG, LMG or sniper rifle will not carry them on their person unless they are involved in a live operation. These weapons will be kept inside vehicles or staged in a vehicle at an HQ at all times.​<br/>

				14.At no time will an A.P.D. officer commandeer a civilian/rebel vehicle.​<br/>

				15.Any officer who has to take action inside of a safe zone will restrain the suspect and immediately escort them outside of the safe zone as it is now a role play event.​<br/>

				16.After an officer has a suspect restrained they will immediately remove the suspects weapons, and notify them that their comms, gps, and hidden tracking devices have been removed.​<br/>

				17.All officers are not to enter The Lawless Zone. Any officer in violation of this rule will be turned over to the Internal Affairs Division. Corrective action will be taken pending the outcome of the investigation.​<br/>

				18.All officers will observe priority of life. The lives of civilians will come before their own. We are here to protect and serve.​<br/>

				19.All officers will radio in with the name, location, and situation of a subject that they are in contact with.​<br/>

				20.All officers will radio in with their location, and situation anytime they come to a situation.​<br/>

				21.Whenever an officer is in contact with a member of the public they will run a wanted check. This can be done by checking themselves or asking another officer to check using the radio ( TeamSpeak3 ).​<br/>

				22.When the alarm is tripped for the Federal Reserve all officers not in a role play event will respond code 3 with the highest ranking officer online taking operational command.​<br/>

				23.If an officer is in a role play event as soon as it has ended that officer will respond to the Federal Reserve code 3.​<br/>

				24.Any officer that is found to have accepted bribes, delivered police intel to rebels or assisted anyone with committing crimes against the people of Altis will be blacklisted from the A.P.D. pending a full investigation by the Internal Affairs Division.​<br/>

				25.All officers are prohibited from selling, trading or giving any kind of police issued gear/vehicles to anyone outside the A.P.D. If caught you will be blacklisted pending an investigation by the Internal Affairs Division.​<br/>

				26.Any officer that is the rank of Cadet will not have access to or use any weapon/device that is deemed lethal except for static launchers only after they have been trained by an F.T.O.<br/>

				27.Any officer that is the rank of Public Officer will not have access to or use any weapon/device that is deemed lethal. ( Weapons/Armed Vehicles/Statics)​<br/>

				28.At no time will anyone discharge their police issued weapon outside of a situation requiring police action.​<br/>

				29.All officers will keep their suppressor on their police issued taser at all times.​<br/>

				30.Officers with the rank of Lieutenant or higher will have channel admin in the A.P.D. channels of TeamSpeak. These officers will have the full authority to remove anyone that is deemed unruly or disruptive in TeamSpeak while playing as A.P.D.​<br/>

				31.At no time will anyone give or contradict an order that comes from a higher ranking officer.​<br/>

				32.All officers ranked Sergeant or above will have their rank in their profile name as to identify them as a commanding officer.​<br/>

				33.All officers no matter the rank will keep updated via the epikgaming.net website of any changes to the A.P.D. Policy and Procedure Manual.​<br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Code of Conduct",
				"
				This is how you need to act when you are on duty as a A.P.D officer.<br/><br/>
				1. All members of the Altis Police Department are to treat one another with respect and dignity that is becoming of a member of the Police Department.​<br/>

				2. All members of the Altis Police Department are expected to treat all citizens with respect and dignity during any situation or conflict. (At no time will anyone be harassed or bullied in accordance with Epikgaming server rules.)​<br/>

				3. All members of the Altis Police Department will follow all Epikgaming server rules at all times while on duty and off. (Any officer caught breaking server rules will be subject to disciplinary action decided by the Internal Affairs Division pending an investigation.)​<br/>

				4.All members of the Altis Police Department will follow all orders from a higher ranking officer. If the officer feels the order was wrong or against the Altis Police Departments Code Of Conduct they will immediately report the incident to a member of the Internal Affairs Division for investigation.​<br/>

				5.All members of the Altis Police Department will use a separate profile and name while on duty. This will protect the name and integrity of the A.P.D.​<br/>

				6.At no time will an officer have a gang, faction, or clan tag in their name while on duty.​<br/>

				7.The tags [APD] and [Deputy] are reserved for whitelisted officers only. [APD Pub] will be used by public officers.​ <br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"A.P.D Response Codes",
				"
				This is how you are to call out your situation and/or status through teamspeak.<br/><br/>

				CODE 1: Normal routine response (No lights or sirens)​<br/>
				CODE 2: Expedite, may use lights​<br/>
				CODE 3: Full emergency response (Lights and sirens)​<br/>
				CODE 4: All clear, resume normal patrol​<br/>

				10-7: Out of service (Going AFK)​<br/>
				10-8: Back in service (Return from AFK)​<br/>
				10-41: Starting tour of duty (Coming online as A.P.D.)​<br/>
				10-42: Ending tour of duty (Going offline as A.P.D.)​<br/>
				10-50: Vehicle collision<br/>
				10-80: Traffic Stop<br/><br/> 

				"
		]
	];



		player createDiaryRecord ["policerules",
		[
			"Equipment List​",
				"
				This is a list of equipment that is required for you to have in the field.<br/><br/>

								
				2 Tool Kits​<br/>
				
				2 First Aid Kits​<br/>
				
				5 or more Doughnuts​<br/>
				
				5 or more Coffee​<br/>
				
				10 or more RedGull​<br/>
				
				2  or more Spike Strips​<br/>
				
				5 or more extra mags for authorized weapon​<br/><br/>

				"
		]
	];

		player createDiaryRecord ["policerules",
		[
			"Uniform Policy",
				"
				1.All A.P.D. Officers will wear the standard issue Police Uniform at all times. <br/>
				
				2.All S.W.A.T. team members will keep a S.W.A.T. uniform in their backpack or vehicle until they are activated for a live operation.<br/>
				
				3.All Sheriff’s Deputies will wear the standard issue Sheriffs Uniform at all times.<br/>
				
				4.The only headcovers allowed for patrol are the beret and the black cap based on rank availability.<br/>
				
				5.All A.P.D. are required to wear vests at all times while on patrol/training. These vests include the police vest and black plate carrier rig.<br/>
				
				6.Combat helmets will be stored inside vehicles or backpacks. They will only be used for live operations.<br/>
				
				7.Face masks, face coverings, or face paint is reserved for S.W.A.T. while on an active operation.<br/><br/>


				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"More Information",
				"
				Get more rules and regulations at<br/><br/>

				https://docs.google.com/document/d/1Yy09Sy2c1j-vWZDnZ7RTVlYlr833BO5k51wB_h3UgXA/edit#heading=h.bzmyjsqk3e6i<br/><br/>


				"
		]
	];

	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Any vehicle not at a Civilian Vehicle Trader<br/>
				2. EMS Vehicles<br/>
				3. Police Vehicles<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. Any weapons not defined under police rules<br/>
				2. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				L: Head lights<br/>
				Left Shift + R (Cop): Restrain (need handcuffs)<br/>
				Left Shift + R (Rebel): Knock out<br/>
				Left Shift + O (Rebel): Restrain with Zipties (need zipties)<br/>
				Left Shift + G: Surrender / Hands on head<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (Cop and EMS vehicles).<br/>
				Left Shift + H: To Holster your weapon<br/>
				Left CTRL + H: To Unholster your weapon<br/>
				Left Shift + Spacebar: Running Jump<br/>
				Left Shift + C: Remove Comms (police and civs)<br/>
				Left Shift + P: Earplugs (lowers effects sounds except voice)<br/><br/>
				"
		]
	];
