{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 76.0, 1373.0, 791.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1171.0, 31.0, 163.0, 22.0 ],
					"restore" : [ 120 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr pTempo @bindto tempo",
					"varname" : "pTempo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 431.5, 250.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 431.5, 226.0, 56.0, 22.0 ],
					"text" : "metro 1n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 421.0, 178.0, 29.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.5, 274.0, 79.0, 22.0 ],
					"text" : "s getMetro1n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 736.0, 55.0, 135.0, 22.0 ],
					"text" : "udpsend localhost 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 736.0, 31.0, 68.0, 22.0 ],
					"text" : "r inputOSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 280.0, 70.0, 22.0 ],
					"text" : "s inputOSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5, 256.0, 127.0, 22.0 ],
					"text" : "prepend /powerGlobal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 31.0, 55.0, 52.0, 22.0 ],
					"text" : "t b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 502.0, 31.0, 80.0, 22.0 ],
					"text" : "r globalOnOff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 323.0, 31.0, 80.0, 22.0 ],
					"text" : "r globalOnOff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 421.0, 202.0, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901960784313726, 0.901960784313726, 1.0, 0.0 ],
					"fontface" : 1,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 602.0, 156.0, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.5, 112.0, 49.0, 20.0 ],
					"text" : "Tempo",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 602.0, 79.0, 29.5, 22.0 ],
					"text" : "120"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901960784313726, 0.901960784313726, 1.0, 0.0 ],
					"fontface" : 1,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 156.0, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.5, 112.0, 45.0, 20.0 ],
					"text" : "Metro",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 79.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"checkedcolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 421.0, 130.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 70.0, 40.0, 40.0 ],
					"uncheckedcolor" : [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 1.0 ],
					"varname" : "metro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.0, 79.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.0, 31.0, 79.0, 22.0 ],
					"text" : "r globalReset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "number",
					"maximum" : 240,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 602.0, 130.0, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 70.0, 40.0, 22.0 ],
					"textcolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"varname" : "tempo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 602.0, 178.0, 59.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"blinkcolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.0, 130.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 70.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 79.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 135.0, 55.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901960784313726, 0.901960784313726, 1.0, 0.0 ],
					"fontface" : 1,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 242.0, 156.0, 47.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.5, 112.0, 47.0, 20.0 ],
					"text" : "Audio",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901960784313726, 0.901960784313726, 1.0, 0.0 ],
					"fontface" : 1,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 156.0, 47.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.5, 112.0, 45.0, 20.0 ],
					"text" : "Reset",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 202.0, 81.0, 22.0 ],
					"text" : "s globalReset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"color" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"elementcolor" : [ 0.301960784313725, 0.301960784313725, 0.301960784313725, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 242.0, 130.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 70.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.0, 79.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-2",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offcolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"oncolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 31.0, 130.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 34.0, 34.0 ],
					"varname" : "on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 202.0, 82.0, 22.0 ],
					"text" : "s globalOnOff"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 156.0, 47.0, 20.0 ],
					"text" : "On/Off"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 161.0, 729.0, 213.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 230.0, 34.0 ],
					"text" : "Global Controls",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 635.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 10.0, 250.0, 130.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 40.5, 156.0, 18.0, 156.0, 18.0, 243.0, 40.0, 243.0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 51.5, 78.0, 251.5, 78.0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 62.5, 78.0, 430.5, 78.0 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 73.5, 78.0, 611.5, 78.0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 332.5, 113.0, 251.5, 113.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 511.5, 113.0, 430.5, 113.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 0.2 ],
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 611.5, 200.0, 430.5, 200.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 1.0, 1.0, 0.250980392156863 ],
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "hamel010Object",
				"default" : 				{
					"accentcolor" : [ 0.745098039215686, 0.015686274509804, 0.015686274509804, 1.0 ],
					"bgcolor" : [ 0.027450980392157, 0.07843137254902, 0.733333333333333, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.2, 0.2, 0.2, 1.0 ],
						"color1" : [ 0.807843137254902, 0.011764705882353, 0.988235294117647, 1.0 ],
						"color2" : [ 0.196078431372549, 0.196078431372549, 0.196078431372549, 1.0 ],
						"proportion" : 0.5,
						"type" : "gradient"
					}
,
					"color" : [ 0.976470588235294, 0.788235294117647, 0.572549019607843, 1.0 ],
					"editing_bgcolor" : [ 0.866666666666667, 0.819607843137255, 0.819607843137255, 1.0 ],
					"elementcolor" : [ 0.407843137254902, 0.607843137254902, 0.43921568627451, 1.0 ],
					"fontface" : [ 0 ],
					"fontsize" : [ 16.0 ],
					"locked_bgcolor" : [ 0.941176470588235, 0.905882352941176, 0.764705882352941, 1.0 ],
					"patchlinecolor" : [ 0.031372549019608, 0.698039215686274, 0.533333333333333, 1.0 ],
					"selectioncolor" : [ 0.941176470588235, 0.941176470588235, 0.796078431372549, 1.0 ],
					"stripecolor" : [ 0.443137254901961, 0.627450980392157, 0.341176470588235, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
