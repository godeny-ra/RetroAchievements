// Time Commando
// #ID = 9282

// $00E254: [8-bit] value = 0x32 when paused
function value_when_paused() => byte(0x00E254)

// $0742B8: [32-bit] Paused:
//          Valid during gameplay
//          0x00000000: playing
//          0x00f00000: just after pressing start button
//          0x01a9005a: paused
function paused() => dword(0x0742B8)
PAUSED =  0x01a9005a

// $0792F8: [8-bit] Hidden room 1
//          How many there are in each level:
//          Prehistory
//          - level 1 = NONE
//          - level 2 = NONE
//          Roman Empire
//          - level 1 = 2
//          - level 2 = 1
//          Japanese Middle Age
//          - level 1 = 2
//          - level 2 = 1
//          European Middle Age
//          - level 1 = 3
//          - level 2 = 3
//          Conquistadors
//          - level 1 = 4
//          - level 2 = 4
//          Wild West
//          - level 1 = 2
//          - level 2 = 2
//          Modern Wars
//          - level 1 = 4
//          - level 2 = 4
//          Future
//          - level 1 = 2
//          - level 2 = 3
//          Beyond Time
//          - level 1 = 0x;
//          - level 2 = 0x;
function hidden_room_1() => byte(0x0792F8)

// $0792F9: [8-bit] Hidden room 2
//          # For levels that have it
function hidden_room_2() => byte(0x0792F9)

// $0792FA: [8-bit] Hidden room 3
//          # For levels that have it
function hidden_room_3() => byte(0x0792FA)

// $0792FB: [8-bit] Hidden room 4
//          # For levels that have it
function hidden_room_4() => byte(0x0792FB)

// $079314: [8-bit] Difficulty selected 2:
//          0x00 - Easy
//          0x01 - Medium
//          0x02 - Hard
function difficulty_selected_2() => byte(0x079314)
EASY = 0x00
MEDIUM = 0x01
HARD = 0x02


// $0796DC: [1-bit] Button pressed:
//          bit 0: L2
//          bit 1: R2
//          bit 2: L1
//          bit 3: R1
//          bit 4: Triangle
//          bit 5: Circle
//          bit 6: X
//          bit 7: Square
function button_pressed_x() => bit6(0x0796DC)

// $07B790: [16-bit] Hidden Bonuses:
//          Prehistory
//          - level 1 = 0x05;
//          - level 2 = 0x02;
//          Roman Empire
//          - level 1 = 0x04;
//          - level 2 = 0x03;
//          Japanese Middle Age
//          - level 1 = 0x04;
//          - level 2 = 0x05;
//          European Middle Age
//          - level 1 = 0x05;
//          - level 2 = 0x0a;
//          Conquistadors
//          - level 1 = 0x08;
//          - level 2 = 0x06;
//          Wild West
//          - level 1 = 0x06;
//          - level 2 = 0x02;
//          Modern Wars
//          - level 1 = 0x11;
//          - level 2 = 0x0f;
//          Future
//          - level 1 = 0x04;
//          - level 2 = 0x07;
//          Beyond Time
//          - level 1 = 0x;
//          - level 2 = 0x;
function hidden_bonuses() => word(0x07B790)

// $08FFA0: [16-bit] Weapon selected
function weapon_selected() => word(0x08FFA0)

// $091C84: [16-bit] Time bar [countdown]
//          max = 0x57e4
function time_bar_countdown() => word(0x091C84)

// $097764: [32-bit] Position in the level:
//          0x0000: General Begin
//          0x07d0: Prehistoric Level 1 Begin
function position_in_the_level() => dword(0x097764)

// $097890: [16-bit] Weapons: 1st slot
//          - which weapon from 0 to 4
//          - 0xffff when there is no weapon
function weapons1() => word(0x097890)

// $097894: [16-bit] Amount 1st slot
//          Obs: Only when 0x097890 != 0xffff
function amount_1st_slot() => word(0x097894)

// $09789C: [16-bit] Weapons: 2nd slot
//          - which weapon from 0 to 4
//          - 0xffff when there is no weapon
function weapons2() => word(0x09789C)

// $0978A0: [16-bit] Amount 2nd slot
//          Obs: Only when 0x09789c != 0xffff
function amount_2nd_slot() => word(0x0978A0)

// $0978A8: [16-bit] Weapons: 3rd slot
//          - which weapon from 0 to 4
//          - 0xffff when there is no weapon
function weapons3() => word(0x0978A8)

// $0978AC: [16-bit] Amount 3rd slot
//          Obs: Only when 0x0978a8 != 0xffff
function amount_3rd_slot() => word(0x0978AC)

// $0978B4: [16-bit] Weapons: 4th slot
//          - which weapon from 0 to 4
//          - 0xffff when there is no weapon
function weapons4() => word(0x0978B4)

// $0978B8: [16-bit] Amount 4th slot
//          Obs: Only when 0x0978b4 != 0xffff
function amount_4th_slot() => word(0x0978B8)

// $0978C0: [16-bit] Weapons: 5th slot
//          - which weapon from 0 to 4
//          - 0xffff when there is no weapon
function weapons5() => word(0x0978C0)

// $0978C4: [16-bit] Amount 5th slot
//          Obs: Only when 0x0978c0 != 0xffff
function amount_5th_slot() => word(0x0978C4)

// $097982: [16-bit] Stanley's health
function stanley_s_health() => word(0x097982)

// $0979A0: [8-bit] Stanley's energy bar size 1..4
function stanley_s_energy_bar_size_1_4() => byte(0x0979A0)

// $0979A1: [8-bit] Number of Continues
function number_of_continues() => byte(0x0979A1)

// $097C12: [16-bit] Enemies' health 1
//          - Prehistoric level 1 first enemy;
//          - Wild west level 1 first enemy;
//          - Future level 1 first enemy;
function enemies_health_1() => word(0x097C12)
DEAD = 0x00

// $0988E2: [16-bit] Enemies' health 5
//          - Prehistoric level 1 first woman;
//          - Prehistoric level 2 guy before little apes;
//          - Conquistators level 1 third pirate;
//          - Wild west level 1 fourth enemy;
//          - Future level 2 first monster;
//          - Beyond time level 2 digital blue demon
function enemies_health_5() => word(0x0988E2)

// $098E02: [16-bit] Enemies' health 7
//          - Japan level 1 (dragon room) Swordsman 1's health
function enemies_health_7() => word(0x098E02)

// $099092: [16-bit] Enemies' health 8
//          - Prehistoric level 2 big ape;
//          - Japan level 1 (dragon room) Swordsman 2;
//          - Future level 2 long leg monster;
function enemies_health_8() => word(0x099092)

// $099322: [16-bit] Enemies' health 9
//          - Japan Middle Age Dragon's health;
//          - Conquistators level 1 other pirate;
function enemies_health_9() => word(0x099322)

// $099842: [16-bit] Enemies' health 11
//          - Prehistoric last stone thrower;
//          - Japan Middle Age level 2 Stronger Last Ninja;
//          - Future level 1 first robot after elevator;
//          - Future level 2 first blue astronaut;
function enemies_health_11() => word(0x099842)

// $099AD2: [16-bit] Enemies' health 12
//          - Prehistoric level 1 last spear man;
//          - European Middle Age level 2 First Black Beast;
//          - Conquistators level 1 other pirate;
function enemies_health_12() => word(0x099AD2)

// $099D62: [16-bit] Enemies' health 13
//          - Prehistoric level 2 Giant Bear;
//          - Conquistators level 1 other pirate;
function enemies_health_13() => word(0x099D62)

// $099FF2: [16-bit] Enemies' health 14
//          - Roman Empire level 2 last axe man;
//          - Conquistators level 1 final stage pirate;
function enemies_health_14() => word(0x099FF2)

// $09A282: [16-bit] Enemies' health 15
//          - Roman Empire level 2 last trident spear man;
//          - Conquistators level 1 final stage pirate;
//          - Modern Wars Doggo;
function enemies_health_15() => word(0x09A282)

// $09A7A2: [16-bit] Enemies' health 16
//          - Roman Empire Bull;
//          - Future blue astronaut behind blown door
function enemies_health_16() => word(0x09A7A2)

// $09BC22: [16-bit] Enemies' health 18
//          - European Middle Age Wizard's health
function enemies_health_18() => word(0x09BC22)

// $09BEB2: [16-bit] Enemies' health 19
//          - European Middle Age Demon's health
function enemies_health_19() => word(0x09BEB2)

// $09EF62: [16-bit] Enemies' health 25
//          - Modern wars level 2 war tank
function enemies_health_25() => word(0x09EF62)

// $09E002: [16-bit] Enemies' health 27
//          - Modern wars level 2 human 1 before tank
function enemies_health_27() => word(0x09E002)

// $09E292: [16-bit] Enemies' health 28
//          - Modern wars level 2 human 2 before tank
function enemies_health_28() => word(0x09E292)

// $09E522: [16-bit] Enemies' health 29
//          - Modern wars level 2 human 3 before tank
function enemies_health_29() => word(0x09E522)

// $09E7B2: [16-bit] Enemies' health 30
//          - Modern wars level 2 dog 1 before tank
function enemies_health_30() => word(0x09E7B2)

// $09EA42: [16-bit] Enemies' health 31
//          - Modern wars level 2 dog 2 before tank
function enemies_health_31() => word(0x09EA42)

// $09ECD2: [16-bit] Enemies' health 32
//          - Modern wars level 2 dog 3 before tank
function enemies_health_32() => word(0x09ECD2)

// $09A512: [16-bit] Enemies' health 33
//          - Roman Empire level 2 last lion before bull
function enemies_health_33() => word(0x09A512)

// $0A2DEC: [8-bit] Which Level:
//          0x00: - Level 1
//          0x01 - Level 2
function which_level() => byte(0x0A2DEC)
LEVEL1 = 0x00
LEVEL2 = 0x01

// $0A4054: [8-bit] When paused:
//          0x00 - "Continue"
//          0x01 - "Sound FX"
//          and so on
function when_paused() => byte(0x0A4054)

// $0A43BC: [8-bit] Chip counter (main)
function chip_counter_main() => byte(0x0A43BC)

// $0A5198: [32 bit] Level Timer
//          The time inside a level is 0x0a5198 - 0x0ab134
function level_timer() => dword(0x0A5198)

// $0A6748: [32-bit] Game Mode:
//          0xFFFFFFFF= Main Menu
//          0x00=Opening
//          0x01=Playing
//          0x07=Demo Mode
function game_mode() => dword(0x0A6748)
PLAYING = 0x01
DEMO_MODE = 0x07
MAIN_MENU = 0xFFFFFFFF

// $0AB0B8: [16-bit] Memory Clean:
//          Prehistory
//          - level 1 = 0x0c;
//          - level 2 = 0x15;
//          Roman Empire
//          - level 1 = 0x23;
//          - level 2 = 0x13;
//          Japanese Middle Age
//          - level 1 = 0x12;
//          - level 2 = 0x1c;
//          European Middle Age
//          - level 1 = 0x22;
//          - level 2 = 0x2e;
//          Conquistadors
//          - level 1 = 0x1f;
//          - level 2 = 0x2e;
//          Wild West
//          - level 1 = 0x1a;
//          - level 2 = 0x0d;
//          Modern Wars
//          - level 1 = 0x26;
//          - level 2 = 0x2d;
//          Future
//          - level 1 = 0x1e;
//          - level 2 = 0x24;
//          Beyond Time
//          - level 1 = 0x;
//          - level 2 = 0x;
function memory_clean() => word(0x0AB0B8)

// $0AB134: [32 bit] Inside levels:
//          0x00: Ready to start
//          Other: Value of address 0x0a5198 (Level Timer) at the moment the level starts
//
//          Obs: The very moment the level is cleared its value changes to the time into the level
function inside_levels() => dword(0x0AB134)

// $0AB284: [8-bit] Worlds:
//          Use with 0x1ff850
//          0x00 - Prehistory
//          0x01 - Roman Empire
//          0x02 - Japanese Middle Age
//          0x03 - European Middle Age
//          0x04 - Conquistadors
//          0x05 - Wild West
//          0x06 - Modern Wars
//          0x07 - Future
//          0x08 - Beyond Time level 1
//          0x09 - Beyond Time level 2
//          0x0a - Beyond Time last boss
function worlds() => byte(0x0AB284)
PREHISTORY = 0x00
ROMAN_EMPIRE = 0x01
JAPANESE_MIDDLE_AGE = 0x02
EUROPEAN_MIDDLE_AGE = 0x03
CONQUISTADORS = 0x04
WILD_WEST = 0x05
MODERN_WARS = 0x06
FUTURE = 0x07
BEYOND_TIME1 = 0x08
BEYOND_TIME2 = 0x09
BEYOND_TIME_LAST_BOSS = 0x0A

COUNTING_CHIPS = 0x58
MAIN_MENU = 0x90

// $15284C: [16-bit] What item 1 is:
//          0x0000: yellow health
//          0x0001: red health
//          0x0002: life
//          0x0003: health extend
//          0x0004: chip
//
//          Item 1 is in 0x15284e
//          # In the Prehistoric Misogynist, before kill the woman this value is set to 0x0004, and in the moment she dies it turns to 0x0002
function what_item_1_is() => word(0x15284C)

// $15284E: [16-bit] Item 1
//          - Prehistoric level 1 life woman drops
function item_1() => word(0x15284E)

// $1FF850: [8-bit] Worlds2:
//          0x58 - Counting chips screen
//          0x90 - Loading / Main Menu
function worlds2() => byte(0x1FF850)

// CUSTOM FUNCTIONS

function Cheating() =>
    paused() == PAUSED &&
    when_paused() == 1 &&
    button_pressed_x() != 0x00

function ElapsedTime() => (level_timer() - prev(inside_levels())) * 2

function EnemiesDead(world) {
    if (world == PREHISTORY)
        return
            enemies_health_11() == DEAD &&
            enemies_health_12() == DEAD
    if (world == ROMAN_EMPIRE)
        return
            enemies_health_14() == DEAD &&
            enemies_health_15() == DEAD &&
            enemies_health_33() == DEAD
    if (world == JAPANESE_MIDDLE_AGE)
        return
            enemies_health_7() == DEAD &&
            enemies_health_8() == DEAD
    if (world == EUROPEAN_MIDDLE_AGE)
        return
            enemies_health_18() == DEAD
    if (world == MODERN_WARS)
        return
            enemies_health_27() == DEAD &&
            enemies_health_28() == DEAD &&
            enemies_health_29() == DEAD &&
            enemies_health_30() == DEAD &&
            enemies_health_31() == DEAD &&
            enemies_health_32() == DEAD

    // Anything else (should not happen)
    return true
}

function GotAllWeapons(){
    return
        weapons1() != 0xffff &&
        weapons2() != 0xffff &&
        weapons3() != 0xffff &&
        weapons4() != 0xffff &&
        weapons5() != 0xffff
}

function GotAllSecretRooms(world, level){
    number = HiddenRoomLookup[world + (0x10 * level)]
    if (number == 0) return true
    if (number == 1)
        return
            hidden_room_1() == 0xff
    if (number == 2)
        return
            hidden_room_1() == 0xff &&
            hidden_room_2() == 0xff
    if (number == 3)
        return
            hidden_room_1() == 0xff &&
            hidden_room_2() == 0xff &&
            hidden_room_3() == 0xff

    // Number == 4
    return
        hidden_room_1() == 0xff &&
        hidden_room_2() == 0xff &&
        hidden_room_3() == 0xff &&
        hidden_room_4() == 0xff
}

function GotAllHiddenBonuses(world, level){
    return (hidden_bonuses() == HiddenBonusLookup[world + (0x10 * level)])
}

function GotAllMemory(world, level){
    return (memory_clean() == MemoryCleanLookup[world + (0x10 * level)])
}

function InsideGame() => (worlds() == worlds2())

function IsPlaying() {
    return
        game_mode() == PLAYING &&
        paused() == 0x00 &&
        inside_levels() != 0x00
}

function LeaderText(option) {
    if (option > 0) {
        return ", memory and secret rooms "
    }
    return " and memory "
}

function StartLevel(world, level, noDifficulty) {
    return
        IsPlaying() &&
        worlds() == world &&
        which_level() == level &&
        (difficulty_selected_2() == HARD || noDifficulty) &&
        prev(inside_levels()) == 0x00
}

function LevelCleared() {
    return
        inside_levels() != 0x00 &&
        prev(inside_levels()) != inside_levels() &&
        prev(inside_levels()) != 0x00
}

// LOOKUPS

BarSizeLookup = {
    0x01: "🟨 - - -",
    0x02: "🟨🟨 - -",
    0x03: "🟨🟨🟨 -",
    0x04: "🟨🟨🟨🟨",
}

ContinuesLookup = {
    0x00: " - - -",
    0x01: "🍕 - -",
    0x02: "🍕🍕 -",
    0x03: "🍕🍕🍕",
}

DifficultyLookup = {
    0x00: "Easy",
    0x01: "Normal",
    0x02: "Hard",
}

HardChallengeLookup = {
    0x00: "Cradle of Humanity",
    0x01: "Et Tu, Brute?",
    0x02: "Bushido",
    0x03: "Dark Times",
    0x04: "Keelhauled",
    0x05: "Eastwood, Clint Eastwood",
    0x06: "Saving the World and a Dog",
    0x07: "Hasta La Vista, Baby",
}

HiddenRoomLookup = {
    0x00: 0x00, //"Prehistory level 1"
    0x01: 0x02, //"Roman Empire level 1",
    0x02: 0x02, //"Japanese Middle Age level 1"
    0x03: 0x03, //"European Middle Age level 1"
    0x04: 0x04, //"Conquistadors level 1"
    0x05: 0x02, //"Wild West level 1"
    0x06: 0x04, //"Modern Wars level 1"
    0x07: 0x02, //"Future level 1"

    0x10: 0x00, //"Prehistory level 2",
    0x11: 0x01, //"Roman Empire level 2",
    0x12: 0x01, //"Japanese Middle Age level 2",
    0x13: 0x03, //"European Middle Age level 2",
    0x14: 0x04, //"Conquistadors level 2",
    0x15: 0x02, //"Wild West level 2",
    0x16: 0x04, //"Modern Wars level 2",
    0x17: 0x03, //"Future level 2",
}

HiddenBonusLookup = {
    0x00: 0x05, //"Prehistory level 1"
    0x01: 0x04, //"Roman Empire level 1",
    0x02: 0x04, //"Japanese Middle Age level 1"
    0x03: 0x05, //"European Middle Age level 1"
    0x04: 0x08, //"Conquistadors level 1"
    0x05: 0x06, //"Wild West level 1"
    0x06: 0x11, //"Modern Wars level 1"
    0x07: 0x04, //"Future level 1"

    0x10: 0x02, //"Prehistory level 2",
    0x11: 0x03, //"Roman Empire level 2",
    0x12: 0x05, //"Japanese Middle Age level 2",
    0x13: 0x0a, //"European Middle Age level 2",
    0x14: 0x06, //"Conquistadors level 2",
    0x15: 0x02, //"Wild West level 2",
    0x16: 0x0f, //"Modern Wars level 2",
    0x17: 0x07, //"Future level 2",
}

HundredPerCentLookup = {
    0x00: "Beware of the Traps!",
    0x01: "Hypatia's Wisdom",
    0x02: "The Secret of Kamakura",
    0x03: "The Knight's Strength",
    0x04: "Captain Morgan's Wealth",
    0x05: "Buffalo Bill's Gunpowder",
    0x06: "The Treasure Behind the Rubble",
    0x07: "The Machine's Hatred",

    0x10: "The Archeologist's Dream",
    0x11: "The Gladiator's Curse",
    0x12: "The Ninja's Stealth",
    0x13: "The Sorcerer's Wizardry",
    0x14: "The Gold of Tenochtitlan",
    0x15: "The Dakota's Legacy",
    0x16: "The Good Dog's Courtesy",
    0x17: "The Terminator's Revenge",
}

LevelLookup = {
    0: "1",
    1: "2",
}

MapLookup = {
    0x00: "Prehistory",
    0x01: "Roman Empire",
    0x02: "Japanese Middle Age",
    0x03: "European Middle Age",
    0x04: "Conquistadors",
    0x05: "Wild West",
    0x06: "Modern Wars",
    0x07: "Future",
    0x08: "Beyond Time",
    0x09: "Beyond Time",
    0x0a: "Beyond Time",
}

MemoryCleanLookup = {
    0x00: 0x0c, //"Prehistory level 1"
    0x01: 0x23, //"Roman Empire level 1",
    0x02: 0x12, //"Japanese Middle Age level 1"
    0x03: 0x22, //"European Middle Age level 1"
    0x04: 0x1f, //"Conquistadors level 1"
    0x05: 0x1a, //"Wild West level 1"
    0x06: 0x26, //"Modern Wars level 1"
    0x07: 0x1e, //"Future level 1"

    0x10: 0x15, //"Prehistory level 2",
    0x11: 0x13, //"Roman Empire level 2",
    0x12: 0x1c, //"Japanese Middle Age level 2",
    0x13: 0x2e, //"European Middle Age level 2",
    0x14: 0x2e, //"Conquistadors level 2",
    0x15: 0x0d, //"Wild West level 2",
    0x16: 0x2d, //"Modern Wars level 2",
    0x17: 0x24, //"Future level 2",
}

WeaponCollectorLookUp = {
    0x00: "Better than Some Weapons out There",
    0x01: "The British Museum Waits for Them",
    0x02: "I Can Become a Ninja with These",
    0x03: "Warrior, Sorcerer and Rogue All at Once",
    0x04: "We Got Gunpowder, but Nothing Like a Good Old Club",
    0x05: "Give Me A Horse Cuz Now I Am A Cowboy!",
    0x06: "Forget About Everything Else. I Got A Bazooka!",
    0x07: "I Was Expecting A Lightsaber",
}

WeaponEquippedLookUp = {
    // Prehistory
    0x00: "bare hands",
    0x01: "rocks",
    0x02: "knife",
    0x03: "wood club",
    0x04: "spear",
    0x05: "giant wooden club",

    // Roman Empire
    0x06: "bare hands",
    0x07: "dagger",
    0x08: "gladius",
    0x09: "sling",
    0x0a: "trident with shield",
    0x0b: "battle-axe",

    // Japanese Middle Age
    0x0c: "bare hands",
    0x0d: "fans",
    0x0e: "shurikens",
    0x0f: "katana",
    0x10: "dao",
    0x11: "fireball",

    // European Middle Age
    0x12: "bare hands",
    0x13: "morning star",
    0x14: "sword and shield",
    0x15: "longsword",
    0x16: "crossbow",
    0x17: "parchment",

    // Conquistadors
    0x18: "bare hands",
    0x19: "sabre",
    0x1a: "halberd",
    0x1b: "flintlock",
    0x1c: "wooden club with obsidian blades",
    0x1d: "blowgun",

    // Wild West
    0x1e: "bare hands",
    0x1f: "revolver",
    0x20: "shotgun",
    0x21: "winchester rifle",
    0x22: "dynamite",
    0x23: "dual-wielded revolvers",

    // Modern Wars
    0x24: "bare hands",
    0x25: "revolver",
    0x26: "enfield bayonet",
    0x27: "AK-47",
    0x28: "hand grenade",
    0x29: "rocket launcher",

    // Future
    0x2a: "bare hands",
    0x2b: "laser pistol",
    0x2c: "laser machine gun",
    0x2d: "yo-yo",
    0x2e: "atomic grenades",
    0x2f: "astronaut suit",

    // Beyond Time
    0x30: "bare hands",
    0x31: "crystal stars",

    // Beyond Time part 2
    0x36: "bare hands",
    0x37: "crystal stars",

    // Beyond Time part 3
    0x3c: "bare hands",
    0x3d: "crystal stars",
}

WhenPausedLookup = {
    0x00: "Continue",
    0x01: "Sound FX",
    0x02: "Music",
    0x03: "Balance",
    0x04: "Quit",
}

// ACHIEVEMENTS #############################################################################################################

achievement(
    title = "Maybe I Will Change History", points = 1, type="progression",
    description = "Kill your first enemy",
    trigger =
        IsPlaying() &&
        worlds() == PREHISTORY &&
        which_level() == LEVEL1 &&
        enemies_health_1() == 0x00 &&
        prev(enemies_health_1()) > 0x00
)

// Weapon Collection achievements //badge = "555930" to "555937"
for index in range(0x00, 0x07){
    achievement(
        title = WeaponCollectorLookUp[index], points = 5, type="missable",
        description = "Take all weapons from " + MapLookup[index],
        trigger =
            IsPlaying() &&
            worlds() == index &&
            which_level() <= 1 &&
            GotAllWeapons() &&
            paused() != PAUSED &&
            prev(weapons5()) == 0xFFFF
    )
}

achievement(
    title = "Silicon Valley Maniac", points = 25,
    description = "Accumulate 99 integrated circuits",
    trigger =
        IsPlaying() &&
        chip_counter_main() == 0x63 && prev(chip_counter_main()) == 0x62 &&
        paused() != PAUSED
)

achievement(
    title = "Prehistoric Misogynist", points = 5, type="missable",
    description = "Don't allow the prehistoric woman to escape and be rewarded for it",
    trigger =
        IsPlaying() &&
        which_level() == LEVEL1 &&
        item_1() != 0xFFFF && prev(item_1()) == 0xFFFF &&
        what_item_1_is() == 0x02 && prev(what_item_1_is()) == 0x04 &&
        enemies_health_5() == 0x00 && prev(enemies_health_5()) > 0x00
)

// Progression achievements
for index in range(0x00, 0x07){
    achievement(
        title = MapLookup[index] + " Done", points = 3, type="progression",
        description = "Finish " + MapLookup[index] + " Era on any level",
        trigger =
            worlds() == index &&
            which_level() == LEVEL2 &&
            LevelCleared()
    )
}

achievement(
    title = "Virus Eradicated", points = 10, type="win_condition",
    description = "Clear the game on any difficulty",
    trigger =
        worlds() == BEYOND_TIME_LAST_BOSS &&
        LevelCleared()
)

// Challenge achievements (Progression in hard)
for index in range(0x00, 0x07){
    achievement(
        title = HardChallengeLookup[index], points = 5,
        description = "Finish " + MapLookup[index] + " Era on hard difficulty",
        id = (416252 + index),
        trigger =
            worlds() == index &&
            which_level() == LEVEL2 &&
            LevelCleared() &&
            difficulty_selected_2() == HARD
    )
}

achievement(
    title = "Gameshark Obliterated", points = 25,
    description = "Clear the game on hard difficulty",
    id = (416260),
    trigger =
        worlds() == BEYOND_TIME_LAST_BOSS &&
        LevelCleared() &&
        difficulty_selected_2() == HARD
)

// Challenge achievements (100% itens, rooms and chips)
for index in range(0x00, 0x07){
    for index2 in range(0x00, 0x01){
        achievement(
            title = HundredPerCentLookup[index + (0x10 * index2)], points = 10, type="missable",
            description = "Collect all chips, items and hidden rooms on " + MapLookup[index] + " on Level " + (index2 + 1),
            trigger =
                worlds() == index &&
                which_level() == index2 &&
                LevelCleared() &&
                GotAllHiddenBonuses(index, index2) &&
                GotAllMemory(index, index2) &&
                GotAllSecretRooms(index, index2)
        )
    }
}

achievement(
    title = "No Life Will Be Spared", points = 1, type="missable",
    description = "Kill the doggo in Modern Wars Era",
    trigger =
        IsPlaying() &&
        worlds() == MODERN_WARS &&
        which_level() == LEVEL2 &&
        enemies_health_15() == 0x00 &&
        prev(enemies_health_15()) > 0x00
)

achievement(
    title = "Completely Healthy", points = 5,
    description = "Get full energy with maximum energy bar size",
    trigger =
        IsPlaying() &&
        stanley_s_health() == 0x80 &&
        stanley_s_energy_bar_size_1_4() == 0x04 &&
        prev(stanley_s_energy_bar_size_1_4()) == 0x03
)

achievement(
    title = "Like a Cat", points = 5,
    description = "Get the maximum number of continues",
    trigger = game_mode() == 0x01 && paused() == 0x00 && inside_levels() != 0x00 && stanley_s_health() == 0x80 &&
              number_of_continues() == 0x03 && prev(number_of_continues()) == 0x02
)

achievement(
    title = "Swallowed by Space", points = 1, type="missable",
    description = "Lose all your effort by finishing the future era without spacesuit",
    trigger =
        worlds() == FUTURE &&
        which_level() == LEVEL2 &&
        weapon_selected() != 0x05 &&
        repeated(10, prev(time_bar_countdown()) == time_bar_countdown()) &&
        never(prev(time_bar_countdown()) != time_bar_countdown()) && never(paused() == PAUSED)
)

achievement(
    title = "Unbearable", points = 10, type="missable",
    description = "Kill the Giant Bear on Hard Difficulty taking no damage",
    trigger =
        IsPlaying() &&
        worlds() ==  PREHISTORY &&
        which_level() == LEVEL2 &&
        difficulty_selected_2() == HARD &&

        once(
            position_in_the_level() > 0xD000 &&
            prev(position_in_the_level()) <= 0xD000
        ) &&

        trigger_when(enemies_health_13() == 0x00) &&
        trigger_when(prev(enemies_health_13()) > 0x00) &&

        never((
            EnemiesDead(PREHISTORY) &&
            stanley_s_health() < prev(stanley_s_health()))
        ) &&
        never((
            EnemiesDead(PREHISTORY) &&
            number_of_continues() < prev(number_of_continues()))
        )
)

achievement(
    title = "Bull's Eye", points = 10, type="missable",
    description = "Kill the Roman Empire's Bull on Hard Difficulty taking no damage",
    trigger =
        IsPlaying() &&
        worlds() == ROMAN_EMPIRE &&
        which_level() == LEVEL2 &&
        difficulty_selected_2() == HARD &&

        once(
            position_in_the_level() > 0x9000 &&
            prev(position_in_the_level()) <= 0x9000
        ) &&

        trigger_when(enemies_health_16() == 0x00) &&
        trigger_when(prev(enemies_health_16()) > 0x00) &&

        never((
            EnemiesDead(ROMAN_EMPIRE) &&
            stanley_s_health() < prev(stanley_s_health()))
        ) &&
        never((
            EnemiesDead(ROMAN_EMPIRE) &&
            number_of_continues() < prev(number_of_continues()))
        )
)

achievement(
    title = "Kono Stanley Da", points = 10, type="missable",
    description = "Kill the Japan Middle Age's Dragon on Hard Difficulty taking no damage",
    trigger =
        IsPlaying() &&
        worlds() == JAPANESE_MIDDLE_AGE &&
        which_level() == LEVEL2 &&
        difficulty_selected_2() == HARD &&

        once(
            position_in_the_level() > 0xA000 &&
            prev(position_in_the_level()) <= 0xA000
        ) &&

        trigger_when(enemies_health_9() == 0x00) &&
        trigger_when(prev(enemies_health_9()) > 0x00) &&

        never((
            EnemiesDead(JAPANESE_MIDDLE_AGE) &&
            stanley_s_health() < prev(stanley_s_health()))
        ) &&
        never((
            EnemiesDead(JAPANESE_MIDDLE_AGE) &&
            number_of_continues() < prev(number_of_continues()))
        )
)

achievement(
    title = "The Exorcist", points = 10, type="missable",
    description = "Kill the European Middle Age's Devil on Hard Difficulty taking no damage",
    trigger =
        IsPlaying() &&
        worlds() == EUROPEAN_MIDDLE_AGE &&
        which_level() == LEVEL2 &&
        difficulty_selected_2() == HARD &&

        once(
            position_in_the_level() < 0x8000 &&
            prev(position_in_the_level()) >= 0x8000
        ) &&

        trigger_when(enemies_health_19() == 0x00) &&
        trigger_when(prev(enemies_health_19()) > 0x00) &&

        never((
            EnemiesDead(EUROPEAN_MIDDLE_AGE) &&
            stanley_s_health() < prev(stanley_s_health()))
        ) &&
        never((
            EnemiesDead(EUROPEAN_MIDDLE_AGE) &&
            number_of_continues() < prev(number_of_continues()))
        )
)

achievement(
    title = "Panzer Slayer", points = 10, type="missable",
    description = "Destroy the Modern Wars' Tank on Hard Difficulty taking no damage",
    trigger =
        IsPlaying() &&
        worlds() == MODERN_WARS &&
        which_level() == LEVEL2 &&
        difficulty_selected_2() == HARD &&

        once(
            position_in_the_level() > 0xFFFEF900 &&
            prev(position_in_the_level()) <= 0xFFFEF900
        ) &&

        trigger_when(enemies_health_25() == 0x00) &&
        trigger_when(prev(enemies_health_25()) > 0x00) &&

        never((
            EnemiesDead(MODERN_WARS) &&
            stanley_s_health() < prev(stanley_s_health()))
        ) &&
        never((
            EnemiesDead(MODERN_WARS) &&
            number_of_continues() < prev(number_of_continues()))
        )
)

achievement(
    title = "Hard Times Commando", points = 10,
    description = "Complete a level with no time remaining and your energy bar at size 1",
    trigger =
        worlds2() != COUNTING_CHIPS &&
        worlds2() != MAIN_MENU &&
        inside_levels() != 0x00 &&
        time_bar_countdown() == 0x00 &&
        prev(inside_levels()) != inside_levels() &&
        prev(inside_levels()) != 0x00 &&
        stanley_s_energy_bar_size_1_4() == 0x01
)

achievement(
    title = "Upload Back to Zero", points = 5,
    description = "Clear a level with almost no time left and full restore it consuming at least 20 chips",
    trigger =
        worlds() <= FUTURE &&
        which_level() <= LEVEL2 &&
        measured(repeated(20, worlds2() == COUNTING_CHIPS &&
        chip_counter_main() < prev(chip_counter_main()))) &&
        time_bar_countdown() == 0x57E4 &&
        prev(time_bar_countdown()) < 0x57E4 &&
        never(inside_levels() == 0x00)
)

// LEADERBOARD #############################################################################################################

for index in range(0x00, 0x07){
    for index2 in range(0x00, 0x01){
        leaderboard
        (
           MapLookup[index] + " Level " + (index2 + 1) + " Speedrun",
           "Complete Level " + (index2 + 1) + " from " + MapLookup[index] + " as fast as you can!",
           StartLevel(index, index2, true),
           Cheating()  || game_mode() != PLAYING || !InsideGame(),
           LevelCleared(),
           measured(ElapsedTime()),
           format = "MILLISECS",    //Actually centiseconds
           lower_is_better = true
        )

        leaderboard
        (
           MapLookup[index] + " Level " + (index2 + 1) + " Hardcore Completionist",
           "Complete Level " + (index2 + 1) + " from " + MapLookup[index] + " in level hard collecting
 all hidden bonuses" + LeaderText(HiddenRoomLookup[index + (0x10 * index2)]) + "as fast as you can!",
           StartLevel(index, index2, false),
           Cheating()  || game_mode() != PLAYING || !InsideGame() ||
           (LevelCleared() &&
                (hidden_bonuses() != HiddenBonusLookup[index + (16*index2)] ||
                memory_clean() != MemoryCleanLookup[index + (16*index2)])
           ),
           LevelCleared() &&
                hidden_bonuses() == HiddenBonusLookup[index + (16*index2)] &&
                memory_clean() == MemoryCleanLookup[index + (16*index2)],
           measured(ElapsedTime()),
           format = "MILLISECS",    //Actually centiseconds
           lower_is_better = true
        )
    }
}

// RICHPRESENCE #############################################################################################################

rich_presence_conditional_display(IsPlaying() && time_bar_countdown() < 0x57E4 && time_bar_countdown() > 0x00,
" Stanley is in Level {0} of {1} Era on {2} difficulty || Weapon: {3} || Energy: {4} || Continues: {5} || Chips: {6} || Timer: {7}",
    rich_presence_lookup("Level", which_level(), LevelLookup),
    rich_presence_lookup("Era", worlds(), MapLookup, fallback="Somewhere else"),
    rich_presence_lookup("Difficulty", difficulty_selected_2(), DifficultyLookup),
    rich_presence_lookup("Weapon", (6 * worlds()) + weapon_selected(), WeaponEquippedLookUp, fallback="bare hands"),
    rich_presence_lookup("BarSize", stanley_s_energy_bar_size_1_4(), BarSizeLookup),
    rich_presence_lookup("Continues", number_of_continues(), ContinuesLookup),
    rich_presence_value("Chips", chip_counter_main()),
    rich_presence_value("Timer", ElapsedTime(), "MILLISECS")
)

rich_presence_conditional_display(paused() == PAUSED,
    " Paused: --{0}--",
    rich_presence_lookup("Paused", when_paused(), WhenPausedLookup)
)

rich_presence_conditional_display(game_mode() == DEMO_MODE, " Demo Mode")

rich_presence_conditional_display(game_mode() == MAIN_MENU, " Main Menu")

rich_presence_display("Entering Time Commando...")
