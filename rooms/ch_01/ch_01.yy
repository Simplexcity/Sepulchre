
{
    "name": "ch_01",
    "id": "69858d2b-c950-44a6-8380-5b176d4a2f72",
    "creationCodeFile": "",
    "inheritCode": false,
    "inheritCreationOrder": false,
    "inheritLayers": false,
    "instanceCreationOrderIDs": [
        "bfc03f53-b732-463c-a2c8-22ff4db266cb"
    ],
    "IsDnD": false,
    "layers": [
        {
            "__type": "GMRInstanceLayer_Model:#YoYoStudio.MVCFormat",
            "name": "collisions",
            "id": "641fff67-a5a4-4b57-963e-68684e10a7da",
            "depth": 0,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "instances": [
                {"name": "inst_2EAC69DF","id": "bfc03f53-b732-463c-a2c8-22ff4db266cb","colour": { "Value": 4294967295 },"creationCodeFile": "","creationCodeType": "","ignore": false,"inheritCode": false,"inheritItemSettings": false,"IsDnD": false,"m_originalParentID": "00000000-0000-0000-0000-000000000000","m_serialiseFrozen": false,"modelName": "GMRInstance","name_with_no_file_rename": "inst_2EAC69DF","objId": "51fc7354-88d3-40da-8445-1ccc04e13710","rotation": 0,"scaleX": 4,"scaleY": 4,"mvc": "1.0","x": 32,"y": 32}
            ],
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRInstanceLayer",
            "mvc": "1.0",
            "userdefined_depth": false,
            "visible": true
        },
        {
            "__type": "GMRTileLayer_Model:#YoYoStudio.MVCFormat",
            "name": "wall",
            "id": "3067af9a-54e7-453c-acfb-9691e3f6f03e",
            "depth": 100,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRTileLayer",
            "prev_tileheight": 32,
            "prev_tilewidth": 32,
            "mvc": "1.0",
            "tiles": {
                "SerialiseData": null,
                "SerialiseHeight": 4,
                "SerialiseWidth": 4,
                "TileSerialiseData": [
                    1,1,1,1,
                    1,10,5,1,
                    1,3,2,1,
                    1,1,1,1
                ]
            },
            "tilesetId": "9f39ec5f-62ae-4ec8-855b-4467a3985290",
            "userdefined_depth": false,
            "visible": true,
            "x": 0,
            "y": 0
        },
        {
            "__type": "GMRBackgroundLayer_Model:#YoYoStudio.MVCFormat",
            "name": "Background",
            "id": "81a728aa-4c8f-499b-bd2e-385a750b3faf",
            "animationFPS": 15,
            "animationSpeedType": "0",
            "colour": { "Value": 4294967295 },
            "depth": 200,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "hspeed": 0,
            "htiled": true,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRBackgroundLayer",
            "mvc": "1.0",
            "spriteId": "fe41ae58-759f-4397-9a98-d281beb4815e",
            "stretch": false,
            "userdefined_animFPS": false,
            "userdefined_depth": false,
            "visible": true,
            "vspeed": 0,
            "vtiled": true,
            "x": 0,
            "y": 0
        }
    ],
    "modelName": "GMRoom",
    "parentId": "00000000-0000-0000-0000-000000000000",
    "physicsSettings":     {
        "id": "278c585a-683b-446f-8fac-53eb42aa5a58",
        "inheritPhysicsSettings": false,
        "modelName": "GMRoomPhysicsSettings",
        "PhysicsWorld": false,
        "PhysicsWorldGravityX": 0,
        "PhysicsWorldGravityY": 10,
        "PhysicsWorldPixToMeters": 0.1,
        "mvc": "1.0"
    },
    "roomSettings":     {
        "id": "ef4db848-a922-4441-a98c-fde5ebf7a229",
        "Height": 128,
        "inheritRoomSettings": false,
        "modelName": "GMRoomSettings",
        "persistent": false,
        "mvc": "1.0",
        "Width": 128
    },
    "mvc": "1.0",
    "views": [
        {"id": "ea5c2a9a-d331-4827-a0d5-4862d65a80e5","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "57a759da-d50a-4909-8247-838226e59f21","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "e7f5f2ff-3e26-4b18-a58b-4fef9e46cba3","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "da7cf4b9-3a91-412d-9b83-8316a3ca9375","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "da7d735c-afd4-4d2c-bbc7-8724bf131034","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "cb2c300a-fa6a-4fb0-a06f-d08748ebbd97","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "a96f8470-fc95-49f1-a754-ee0a839ecb74","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
        {"id": "a004fc75-a692-4c58-842a-8d73f4dede59","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0}
    ],
    "viewSettings":     {
        "id": "f3232ed7-5db6-4985-82b5-324060661409",
        "clearDisplayBuffer": true,
        "clearViewBackground": false,
        "enableViews": false,
        "inheritViewSettings": false,
        "modelName": "GMRoomViewSettings",
        "mvc": "1.0"
    }
}