#!/usr/bin/env dub
/+
dub.sdl:
    name "snippet12"
    dependency "dwt" path="../../../../../../" version="*"
    libs \
      "atk-1.0" \
      "cairo" \
      "dl" \
      "fontconfig" \
      "gdk-x11-2.0" \
      "gdk_pixbuf-2.0" \
      "gio-2.0" \
      "glib-2.0" \
      "gmodule-2.0" \
      "gobject-2.0" \
      "gthread-2.0" \
      "gtk-x11-2.0" \
      "pango-1.0" \
      "pangocairo-1.0" \
      "X11" \
      "Xcomposite" \
      "Xcursor" \
      "Xdamage" \
      "Xext" \
      "Xfixes" \
      "Xi" \
      "Xinerama" \
      "Xrandr" \
      "Xrender" \
      "Xtst" \
      platform="linux"
+/
/*******************************************************************************
 * Copyright (c) 2000, 2013 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 * Port to the D programming language:
 *     alice <stigma@disroot.org>
 *******************************************************************************/
module org.eclipse.swt.snippets.Snippet12;

/*
 * Text example snippet: set the selection (start, end),
 * and then scroll the selection to the top of the client area
 *
 * For a list of all SWT example snippets see
 * http://www.eclipse.org/swt/snippets/
 */
import std.conv : to;
import std.stdio : writeln;

import org.eclipse.swt.all;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.all;

void main(string[] args) {
    Display display = new Display ();
    Shell shell = new Shell (display);
    Text text = new Text (shell, SWT.BORDER | SWT.V_SCROLL);
    Rectangle clientArea = shell.getClientArea ();
    text.setBounds (clientArea.x + 10, clientArea.y + 10, 100, 100);
    for (int i=0; i<16; i++) {
        text.append("Line " ~ to!string(i) ~ "\n");
    }
    shell.open ();
    text.setSelection (30, 38);
    text.setTopIndex (30);
    writeln ("selection=", text.getSelection ());
    writeln ("selection text=", text.getSelectionText ());
    writeln ("caret position=", text.getCaretPosition ());
    writeln ("caret location=", text.getCaretLocation ());
    while (!shell.isDisposed ()) {
        if (!display.readAndDispatch ()) display.sleep ();
    }
    display.dispose ();
}
