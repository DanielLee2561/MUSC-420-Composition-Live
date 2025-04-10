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
		"showontab" : 1,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 134.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 100.0, 400.0, 20.0 ],
					"text" : "Record a Pattern of Notes."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 134.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 100.0, 120.0, 20.0 ],
					"text" : "Midi Recorder"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 887.0, 156.0, 101.0, 20.0 ],
					"text" : "Subpatches"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1373.0, 765.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 164.0, 448.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 140.0, 280.0, 400.0, 20.0 ],
									"text" : "Edit the text file for a pattern of notes."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 164.0, 121.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 280.0, 120.0, 20.0 ],
									"text" : "Edit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 183.0, 149.0, 448.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 140.0, 260.0, 400.0, 20.0 ],
									"text" : "Reset all data for a pattern of notes."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 149.0, 121.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 260.0, 120.0, 20.0 ],
									"text" : "Reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 134.0, 448.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 140.0, 240.0, 400.0, 20.0 ],
									"text" : "Mark the end of a note (chord/rest) for a pattern of notes."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 134.0, 121.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 240.0, 120.0, 20.0 ],
									"text" : "Mark"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 502.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 230.0, 540.0, 80.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"args" : [ 0, 50 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 30.0, 256.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 610.0, 20.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpMidiRecorder.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 30.0, 590.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 20.0, 590.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 503.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 10.0, 820.0, 210.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 887.0, 92.0, 90.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p MidiRecorder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 156.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 120.0, 400.0, 20.0 ],
					"text" : "Select a MIDI Input Device."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 156.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 120.0, 120.0, 20.0 ],
					"text" : "Settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1373.0, 765.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ 0, 50 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 480.0, 255.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 280.0, 240.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-12",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpMicrophoneInstrument.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 480.0, 30.0, 260.0, 180.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 240.0, 260.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpGlobalControls.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 766.0, 30.0, 320.0, 150.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 460.0, 270.0, 150.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ 0, 50 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 30.0, 255.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 440.0, 20.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ 0 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpUserInstrument.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 30.0, 420.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 20.0, 420.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 509.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 230.0, 490.0, 210.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 509.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 10.0, 650.0, 210.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 524.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 450.0, 290.0, 170.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 887.0, 44.0, 101.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p UserInstrument"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 90.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 60.0, 400.0, 20.0 ],
					"text" : "Synchronize and Reset all patches to their initial state."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 68.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 40.0, 400.0, 20.0 ],
					"text" : "Play sound from a MIDI Device or Microphone."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 112.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 80.0, 400.0, 20.0 ],
					"text" : "Play sound from a Pattern of Notes."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 112.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 80.0, 120.0, 20.0 ],
					"text" : "Midi Instrument"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 90.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 60.0, 120.0, 20.0 ],
					"text" : "Global Controls"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 68.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 40.0, 120.0, 20.0 ],
					"text" : "User Instrument"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 46.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 120.0, 20.0 ],
					"text" : "Introduction"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 46.0, 448.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 20.0, 400.0, 20.0 ],
					"text" : "Welcome!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 102.0, 1373.0, 765.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ 0, 50 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-20",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 1154.0, 256.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 580.0, 460.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ 3 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-21",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpMidiInstrument.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1154.0, 30.0, 560.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 460.0, 560.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 503.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 450.0, 790.0, 210.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"args" : [ 0, 80 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-17",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 592.0, 256.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 580.0, 240.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ 2 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpMidiInstrument.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 592.0, 30.0, 560.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 240.0, 560.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 503.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 230.0, 790.0, 210.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"args" : [ 0, 20 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpFXUnit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 30.0, 256.0, 210.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 580.0, 20.0, 210.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ 1 ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "bpMidiInstrument.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 30.0, 560.0, 190.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 20.0, 560.0, 190.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 503.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 10.0, 790.0, 210.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 887.0, 68.0, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p MidiInstrument"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1373.0, 765.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 97.0, 60.0, 20.0 ],
									"text" : "Trigger"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"blinkcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.2, 0.2, 0.2, 1.0 ],
									"parameter_enable" : 0,
									"patching_rect" : [ 165.0, 25.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 20.0, 34.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 24.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 598.0, 213.0, 34.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 54.0, 20.0, 146.0, 34.0 ],
									"text" : "Settings",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 25.0, 79.0, 22.0 ],
									"text" : "r globalReset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 49.0, 64.0, 22.0 ],
									"text" : "controllers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 73.0, 50.0, 22.0 ],
									"text" : "midiinfo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 166.0, 108.0, 22.0 ],
									"text" : "s settingsMidiInput"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 97.0, 79.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 130.0, 70.0, 70.0, 20.0 ],
									"text" : "MIDI Input"
								}

							}
, 							{
								"box" : 								{
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.250980392156863, 0.250980392156863, 0.250980392156863, 1.0 ],
									"bgfillcolor_color1" : [ 0.250980392156863, 0.250980392156863, 0.250980392156863, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"id" : "obj-20",
									"items" : "Keystation Mini 32 MK3",
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 142.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 70.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 2,
									"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 504.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 10.0, 200.0, 100.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"midpoints" : [ 174.5, 59.0, 155.0, 59.0, 155.0, 46.0, 39.5, 46.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "hamel010Object",
								"default" : 								{
									"accentcolor" : [ 0.745098039215686, 0.015686274509804, 0.015686274509804, 1.0 ],
									"bgcolor" : [ 0.027450980392157, 0.07843137254902, 0.733333333333333, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1, 1, 1, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 887.0, 116.0, 62.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Settings"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.101960784313725, 0.101960784313725, 0.101960784313725, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 502.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 10.0, 540.0, 140.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-15::obj-13::obj-22" : [ "live.gain~[10]", "Output", 0 ],
			"obj-15::obj-13::obj-23" : [ "live.dial[19]", "Panning", 0 ],
			"obj-15::obj-13::obj-25" : [ "live.gain~[9]", "Input", 0 ],
			"obj-15::obj-13::obj-27" : [ "live.dial[18]", "Volume", 0 ],
			"obj-15::obj-1::obj-33::obj-14" : [ "vst~[4]", "vst~[1]", 0 ],
			"obj-15::obj-2::obj-22" : [ "live.gain~[15]", "Output", 0 ],
			"obj-15::obj-2::obj-23" : [ "live.dial[16]", "Panning", 0 ],
			"obj-15::obj-2::obj-25" : [ "live.gain~[16]", "Input", 0 ],
			"obj-15::obj-2::obj-27" : [ "live.dial[15]", "Volume", 0 ],
			"obj-4::obj-1::obj-72::obj-14" : [ "vst~[5]", "vst~[1]", 0 ],
			"obj-4::obj-2::obj-22" : [ "live.gain~[2]", "Output", 0 ],
			"obj-4::obj-2::obj-23" : [ "live.dial", "Panning", 0 ],
			"obj-4::obj-2::obj-25" : [ "live.gain~[3]", "Input", 0 ],
			"obj-4::obj-2::obj-27" : [ "live.dial[1]", "Volume", 0 ],
			"obj-7::obj-17::obj-22" : [ "live.gain~[6]", "Output", 0 ],
			"obj-7::obj-17::obj-23" : [ "live.dial[4]", "Panning", 0 ],
			"obj-7::obj-17::obj-25" : [ "live.gain~[7]", "Input", 0 ],
			"obj-7::obj-17::obj-27" : [ "live.dial[12]", "Volume", 0 ],
			"obj-7::obj-18::obj-12::obj-14" : [ "vst~[2]", "vst~[1]", 0 ],
			"obj-7::obj-1::obj-12::obj-14" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-7::obj-20::obj-22" : [ "live.gain~[8]", "Output", 0 ],
			"obj-7::obj-20::obj-23" : [ "live.dial[14]", "Panning", 0 ],
			"obj-7::obj-20::obj-25" : [ "live.gain~[14]", "Input", 0 ],
			"obj-7::obj-20::obj-27" : [ "live.dial[13]", "Volume", 0 ],
			"obj-7::obj-21::obj-12::obj-14" : [ "vst~[3]", "vst~[1]", 0 ],
			"obj-7::obj-2::obj-22" : [ "live.gain~[4]", "Output", 0 ],
			"obj-7::obj-2::obj-23" : [ "live.dial[2]", "Panning", 0 ],
			"obj-7::obj-2::obj-25" : [ "live.gain~[5]", "Input", 0 ],
			"obj-7::obj-2::obj-27" : [ "live.dial[3]", "Volume", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-15::obj-13::obj-22" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-15::obj-13::obj-23" : 				{
					"parameter_longname" : "live.dial[19]"
				}
,
				"obj-15::obj-13::obj-25" : 				{
					"parameter_longname" : "live.gain~[9]"
				}
,
				"obj-15::obj-13::obj-27" : 				{
					"parameter_longname" : "live.dial[18]"
				}
,
				"obj-15::obj-2::obj-22" : 				{
					"parameter_longname" : "live.gain~[15]"
				}
,
				"obj-15::obj-2::obj-23" : 				{
					"parameter_longname" : "live.dial[16]"
				}
,
				"obj-15::obj-2::obj-25" : 				{
					"parameter_longname" : "live.gain~[16]"
				}
,
				"obj-15::obj-2::obj-27" : 				{
					"parameter_longname" : "live.dial[15]"
				}
,
				"obj-7::obj-17::obj-22" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-7::obj-17::obj-23" : 				{
					"parameter_longname" : "live.dial[4]"
				}
,
				"obj-7::obj-17::obj-25" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-7::obj-17::obj-27" : 				{
					"parameter_longname" : "live.dial[12]"
				}
,
				"obj-7::obj-20::obj-22" : 				{
					"parameter_longname" : "live.gain~[8]"
				}
,
				"obj-7::obj-20::obj-23" : 				{
					"parameter_longname" : "live.dial[14]"
				}
,
				"obj-7::obj-20::obj-25" : 				{
					"parameter_longname" : "live.gain~[14]"
				}
,
				"obj-7::obj-20::obj-27" : 				{
					"parameter_longname" : "live.dial[13]"
				}
,
				"obj-7::obj-2::obj-22" : 				{
					"parameter_longname" : "live.gain~[4]"
				}
,
				"obj-7::obj-2::obj-23" : 				{
					"parameter_longname" : "live.dial[2]"
				}
,
				"obj-7::obj-2::obj-25" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-7::obj-2::obj-27" : 				{
					"parameter_longname" : "live.dial[3]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Kontakt 8-Maven.maxsnap",
				"bootpath" : "~/OneDrive/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../OneDrive/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Kontakt 8.maxsnap",
				"bootpath" : "~/OneDrive/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../OneDrive/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "aPanning.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "aSynthesizer.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpFXUnit.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpGlobalControls.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpMicrophoneInstrument.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpMidiInstrument.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpMidiRecorder.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpUserInstrument.maxpat",
				"bootpath" : "~/Desktop/File History/MUSC 420/MUSC-420-Composition-Live/Max/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
