#ifndef NL_STYLE_H
#define NL_STYLE_H

#define NL_SCRIM			0.02 0.024 0.04 0.86
#define NL_VIGNETTE			0 0 0 0.5
#define NL_SURFACE			0.07 0.08 0.11 0.78
#define NL_SURFACE_HOVER	0.12 0.15 0.25 0.9
#define NL_SURFACE_SOLID	0.03 0.035 0.06 0.9
#define NL_LINE				1 1 1 0.1
#define NL_LINE_STRONG		1 1 1 0.28
#define NL_LINE_HOVER		0.4 0.6 1 0.9
#define NL_BLUE				0.16 0.42 1 1
#define NL_BLUE_SOFT		0.16 0.42 1 0.18
#define NL_TEXT				0.95 0.95 0.93 1
#define NL_TEXT_DIM			0.78 0.79 0.82 1
#define NL_MUTED			0.55 0.57 0.62 1
#define NL_GOLD				0.976 0.624 0.22 1
#define NL_FOCUS			1 1 1 1
#define NL_CLEAR			0 0 0 0

#define NL_FONT				UI_FONT_BIG
#define NL_FONT_BOLD		UI_FONT_BOLD

#define NL_BACKDROP \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN \
			backcolor		NL_SCRIM \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			0 0 420 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN \
			background		"gradient" \
			forecolor		NL_VIGNETTE \
			backcolor		NL_VIGNETTE \
			visible			1 \
			decoration \
		}

#define NL_TITLE(_text) \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			40 38 3 20 0 0 \
			backcolor		NL_BLUE \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			52 34 0 0 0 0 \
			text			_text \
			textfont		NL_FONT_BOLD \
			textscale		.42 \
			textaligny		22 \
			forecolor		NL_TEXT \
			visible			1 \
			decoration \
		}

#define NL_RULE(_y) \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			40 _y 560 1 0 0 \
			backcolor		NL_LINE \
			visible			1 \
			decoration \
		}

// Short hint right-aligned on the title line
#define NL_NOTE(_text) \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			600 34 0 0 0 0 \
			text			_text \
			textfont		NL_FONT \
			textscale		.22 \
			textalign		ITEM_ALIGN_RIGHT \
			textaligny		22 \
			forecolor		NL_MUTED \
			visible			1 \
			decoration \
		}

#define NL_HEADER(_text) \
		NL_TITLE(_text) \
		NL_RULE(70)

#define NL_FOOTER \
		NL_RULE(422)

// Detail line fed by the scripts (requirements, descriptions, errors)
#define NL_INFO(_origin) \
		itemDef \
		{ \
			dvar			"nl_kr_info" \
			type			ITEM_TYPE_TEXT \
			rect			0 0 0 0 0 0 \
			origin			_origin \
			textfont		NL_FONT \
			textscale		.22 \
			forecolor		NL_TEXT \
			visible			1 \
			decoration \
		}

// Keyboard key drawn like <kbd>; the key label is baked into _image (nl_kbd_*)
#define NL_KEYCAP(_origin, _image, _w) \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			0 0 _w 16 0 0 \
			origin			_origin \
			background		_image \
			visible			1 \
			decoration \
		}

// Footer key hint: keycap plus a clickable label running the same action as the key
#define NL_HINT(_origin, _image, _w, _lx, _bw, _label, _action) \
		NL_KEYCAP(_origin, _image, _w) \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			rect			0 0 _bw 16 0 0 \
			origin			_origin \
			text			_label \
			textfont		NL_FONT \
			textscale		.23 \
			textalignx		_lx \
			textaligny		12 \
			forecolor		NL_TEXT_DIM \
			visible			1 \
			mouseEnter \
			{ \
				play "mouse_over"; \
			} \
			action \
			{ \
				play "mouse_click"; \
				_action \
			} \
		}

#define NL_HINT_KEY(_origin, _image, _label, _bw, _action) \
		NL_HINT(_origin, _image, 16, 22, _bw, _label, _action)

#define NL_HINT_ESC(_origin, _label, _bw, _action) \
		NL_HINT(_origin, "nl_kbd_esc", 30, 36, _bw, _label, _action)

// nL Tokens balance, right-aligned to the header; hover explains how to earn them
#define NL_TOKENS \
		itemDef \
		{ \
			dvar			"nlt" \
			type			ITEM_TYPE_TEXT \
			rect			552 34 0 0 0 0 \
			textfont		NL_FONT_BOLD \
			textscale		.32 \
			textalign		ITEM_ALIGN_RIGHT \
			textaligny		22 \
			forecolor		NL_GOLD \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			556 34 0 0 0 0 \
			text			"nL Tokens" \
			textfont		NL_FONT \
			textscale		.22 \
			textaligny		22 \
			forecolor		NL_MUTED \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			rect			460 36 140 26 0 0 \
			visible			1 \
			mouseEnter \
			{ \
				show nlt_tooltip; \
			} \
			mouseExit \
			{ \
				hide nlt_tooltip; \
			} \
		} \
		itemDef \
		{ \
			name			"nlt_tooltip" \
			type			ITEM_TYPE_TEXT \
			rect			600 70 0 0 0 0 \
			text			"Earn nL Tokens through activity, challenges and events." \
			textfont		NL_FONT \
			textscale		.2 \
			textalign		ITEM_ALIGN_RIGHT \
			textaligny		0 \
			forecolor		NL_TEXT_DIM \
			visible			0 \
			decoration \
		}

// Text tab. _marker is the name of the blue underline shown while the tab is active
#define NL_TAB(_origin, _w, _cx, _text, _marker, _action) \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 _w 22 0 0 \
			origin			_origin \
			backcolor		NL_CLEAR \
			text			_text \
			textfont		NL_FONT \
			textscale		.24 \
			textalign		ITEM_ALIGN_CENTER \
			textalignx		_cx \
			textaligny		15 \
			forecolor		NL_TEXT_DIM \
			visible			1 \
			mouseEnter \
			{ \
				play "mouse_over"; \
				setcolor backcolor 1 1 1 0.06; \
			} \
			mouseExit \
			{ \
				setcolor backcolor NL_CLEAR; \
			} \
			action \
			{ \
				play "mouse_click"; \
				_action \
			} \
		} \
		itemDef \
		{ \
			name			_marker \
			style			WINDOW_STYLE_FILLED \
			rect			0 21 _w 2 0 0 \
			origin			_origin \
			backcolor		NL_BLUE \
			visible			0 \
			decoration \
		}

// Primary call to action: blue button art with a hover variant. Names must be unique in the menu
#define NL_CTA(_name, _hover, _origin, _w, _h, _cx, _ty, _text, _action) \
		itemDef \
		{ \
			name			_name \
			style			WINDOW_STYLE_SHADER \
			rect			0 0 _w _h 0 0 \
			origin			_origin \
			background		"nl_btn_blue" \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			name			_hover \
			style			WINDOW_STYLE_SHADER \
			rect			0 0 _w _h 0 0 \
			origin			_origin \
			background		"nl_btn_blue_h" \
			visible			0 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			rect			0 0 _w _h 0 0 \
			origin			_origin \
			text			_text \
			textfont		NL_FONT_BOLD \
			textscale		.28 \
			textalign		ITEM_ALIGN_CENTER \
			textalignx		_cx \
			textaligny		_ty \
			forecolor		NL_TEXT \
			visible			1 \
			mouseEnter \
			{ \
				play "mouse_over"; \
				show _hover; \
				hide _name; \
			} \
			mouseExit \
			{ \
				show _name; \
				hide _hover; \
			} \
			action \
			{ \
				play "mouse_click"; \
				_action \
			} \
		}

// Small secondary button
#define NL_BUTTON(_origin, _w, _cx, _text, _action) \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 _w 18 0 0 \
			origin			_origin \
			backcolor		NL_SURFACE \
			border			1 \
			bordercolor		NL_LINE \
			text			_text \
			textfont		NL_FONT \
			textscale		.21 \
			textalign		ITEM_ALIGN_CENTER \
			textalignx		_cx \
			textaligny		13 \
			forecolor		NL_TEXT_DIM \
			visible			1 \
			mouseEnter \
			{ \
				play "mouse_over"; \
				setcolor bordercolor NL_LINE_HOVER; \
			} \
			mouseExit \
			{ \
				setcolor bordercolor NL_LINE; \
			} \
			action \
			{ \
				play "mouse_click"; \
				_action \
			} \
		}

// Selectable icon tile, 100x84. The script sets _dvar to "1" when selected and "2" when locked
#define NL_TILE(_origin, _id, _hover, _dvar, _name, _meta, _image) \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 100 84 0 0 \
			origin			_origin \
			backcolor		NL_SURFACE \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 100 84 0 0 \
			origin			_origin \
			backcolor		NL_BLUE_SOFT \
			dvartest		_dvar \
			showDvar		{ "1" } \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			24 4 52 52 0 0 \
			origin			_origin \
			background		_image \
			dvartest		_dvar \
			hideDvar		{ "2" } \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			24 4 52 52 0 0 \
			origin			_origin \
			background		_image \
			forecolor		1 1 1 0.2 \
			backcolor		1 1 1 0.2 \
			dvartest		_dvar \
			showDvar		{ "2" } \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			34 15 32 32 0 0 \
			origin			_origin \
			background		"nl_kutka" \
			dvartest		_dvar \
			showDvar		{ "2" } \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			1 1 3 82 0 0 \
			origin			_origin \
			backcolor		NL_BLUE \
			dvartest		_dvar \
			showDvar		{ "1" } \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_BUTTON \
			style			WINDOW_STYLE_FILLED \
			rect			0 0 100 84 0 0 \
			origin			_origin \
			backcolor		NL_CLEAR \
			border			1 \
			bordercolor		NL_LINE \
			text			_name \
			textfont		NL_FONT \
			textscale		.21 \
			textalign		ITEM_ALIGN_CENTER \
			textalignx		50 \
			textaligny		68 \
			forecolor		NL_TEXT_DIM \
			visible			1 \
			mouseEnter \
			{ \
				play "mouse_over"; \
				scriptMenuResponse _hover; \
				setcolor bordercolor NL_LINE_HOVER; \
			} \
			mouseExit \
			{ \
				setcolor bordercolor NL_LINE; \
			} \
			action \
			{ \
				play "mouse_click"; \
				scriptMenuResponse _id; \
			} \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			0 0 100 84 0 0 \
			origin			_origin \
			text			_meta \
			textfont		NL_FONT \
			textscale		.18 \
			textalign		ITEM_ALIGN_CENTER \
			textalignx		50 \
			textaligny		78 \
			forecolor		NL_MUTED \
			visible			1 \
			decoration \
		}

// Quick message card anchored bottom-left; rows use the script's "N. Name" text pitch (.2 = 9.6px)
#define NL_QCARD(_y, _h, _title) \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			24 _y 132 _h 0 0 \
			backcolor		NL_SURFACE_SOLID \
			border			1 \
			bordercolor		NL_LINE \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			24 _y 3 27 0 0 \
			origin			1 1 \
			backcolor		NL_BLUE \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_SHADER \
			rect			34 _y 112 28 0 0 \
			background		_title \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			style			WINDOW_STYLE_FILLED \
			rect			24 _y 132 1 0 0 \
			origin			0 28 \
			backcolor		NL_LINE \
			visible			1 \
			decoration \
		}

#define NL_QLIST(_y, _keys, _labels) \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			34 _y 0 0 0 0 \
			text			_keys \
			textfont		NL_FONT_BOLD \
			textscale		.2 \
			forecolor		NL_BLUE \
			visible			1 \
			decoration \
		} \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			46 _y 0 0 0 0 \
			text			_labels \
			textfont		NL_FONT \
			textscale		.2 \
			forecolor		NL_TEXT \
			visible			1 \
			decoration \
		}

#define NL_QDVAR(_y, _dvar) \
		itemDef \
		{ \
			type			ITEM_TYPE_TEXT \
			rect			34 _y 0 0 0 0 \
			dvar			_dvar \
			textfont		NL_FONT \
			textscale		.2 \
			forecolor		NL_TEXT \
			visible			1 \
			decoration \
		}

#endif
