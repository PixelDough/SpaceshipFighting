{
    "id": "0d6ad105-0202-4752-8b3c-bad6d417fc0f",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "Input_Dog",
    "IncludedResources": [
        "Sprites\\inputdog\\sDogBark",
        "Sprites\\inputdog\\sDogGrowl",
        "Sprites\\inputdog\\sDogIdle",
        "Sprites\\inputdog\\sFatButton",
        "Sprites\\inputdog\\sThinButton",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_custom_controls_file.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_gamepad_input_down.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_custom_controls.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_gamepad_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_keyboard_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_save_custom_controls.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_load.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_save.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_get_input_string.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\inputdog_add_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_check_gamepad_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_gamepad_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_joystick_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_player",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_gamepad",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_gamepad_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_keyboard_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_is_slot_in_use",
        "Scripts\\inputdog\\_Input Manager\\inputdog_keyboard_check_direct",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_gamepads",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_joysticks",
        "Scripts\\inputdog\\_Input Manager\\inputdog_tween",
        "Scripts\\inputdog\\inputdog_analog",
        "Scripts\\inputdog\\inputdog_direction",
        "Scripts\\inputdog\\inputdog_down",
        "Scripts\\inputdog\\inputdog_pressed",
        "Scripts\\inputdog\\inputdog_released",
        "Scripts\\inputdog\\inputdog_set_rumble",
        "Fonts\\inputdog\\fButton",
        "Objects\\inputdog\\ClickableButtons\\ButtonParent",
        "Objects\\inputdog\\ClickableButtons\\GoToExampleRoom",
        "Objects\\inputdog\\ClickableButtons\\GoToInputRemapRoom",
        "Objects\\inputdog\\ClickableButtons\\LoadDefaultInputs",
        "Objects\\inputdog\\ClickableButtons\\SaveInputMapping",
        "Objects\\inputdog\\ClickableButtons\\SetInput",
        "Objects\\inputdog\\ClickableButtons\\StartStopRecording",
        "Objects\\inputdog\\ClickableButtons\\ToggleDirectInput",
        "Objects\\inputdog\\ExampleRoom\\ExampleDog",
        "Objects\\inputdog\\InputForPlayer1",
        "Objects\\inputdog\\InputForPlayer2",
        "Objects\\inputdog\\InputForPlayer3",
        "Objects\\inputdog\\InputForPlayer4",
        "Objects\\inputdog\\InputManager",
        "Objects\\inputdog\\InputRemappingManager",
        "Rooms\\inputdog\\rInitInputManager",
        "Rooms\\inputdog\\rExampleRoom",
        "Rooms\\inputdog\\rExampleInputRemapping"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2019-16-22 11:02:50",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "0d468b4f-ca4d-4402-a1c0-a5e73d92a68a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "be5c88cc-64bf-42ce-b4ea-7cdf09acffad",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_down",
                    "hidden": false,
                    "value": "101"
                },
                {
                    "id": "79e92138-db90-40e6-aa6c-7d2a818fa6f8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_left",
                    "hidden": false,
                    "value": "102"
                },
                {
                    "id": "44c8b3ca-dc01-48c1-8d24-c30566ce6ab1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_right",
                    "hidden": false,
                    "value": "103"
                },
                {
                    "id": "9160e425-a2f1-425d-83a3-6cd7fe32eee4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_up",
                    "hidden": false,
                    "value": "104"
                },
                {
                    "id": "e2b4b4a9-5433-42b4-a359-82aacc85cd4a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_trigger",
                    "hidden": false,
                    "value": "105"
                },
                {
                    "id": "83765d37-ce37-49ff-8261-e9396ff0a390",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_down",
                    "hidden": false,
                    "value": "106"
                },
                {
                    "id": "7e98133c-d790-4c1d-8b85-88b192f515f7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_left",
                    "hidden": false,
                    "value": "107"
                },
                {
                    "id": "2a4ae738-b50b-45b6-a263-1aa7a0cf29f9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_right",
                    "hidden": false,
                    "value": "108"
                },
                {
                    "id": "7d369dc1-4c0d-4ae6-9598-c437c7300ea1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_up",
                    "hidden": false,
                    "value": "109"
                },
                {
                    "id": "6fe09f90-1c3b-49ba-9a73-4522edb01bb9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_trigger",
                    "hidden": false,
                    "value": "110"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "inputdog.ext",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\inputdog.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.messhof.inputDog",
    "productID": "1CC19BDD3FEBFF198B83FD01CF43599E",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.2.0"
}