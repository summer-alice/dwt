/*******************************************************************************
 * Copyright (c) 2015, 2016 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *     Red Hat Inc. - Bug 462631
 * Port to the D Programming Language:
 *     alice <stigma@disroot.org>
 *******************************************************************************/
module tests.RGBA;

import std.exception : assertThrown;

import java.lang.exceptions;
import java.lang.String;

import org.eclipse.swt.graphics.RGBA;

/*
 * Automated Test Suite for class org.eclipse.swt.graphics.RGBA
 */

@("test_ConstructorIIII")
unittest
{
    // Test RGBA(int red, int green, int blue, int alpha)
    new RGBA(20, 100, 200, 255);

    new RGBA(0, 0, 0, 0);

    assertThrown!IllegalArgumentException(new RGBA(-1, 20, 50, 255),
        "No exception thrown for red < 0");

    assertThrown!IllegalArgumentException(new RGBA(256, 20, 50, 255),
        "No exception thrown for red > 255");

    assertThrown!IllegalArgumentException(new RGBA(20, -1, 50, 0),
        "No exception thrown for green < 0");

    assertThrown!IllegalArgumentException(new RGBA(20, 256, 50, 0),
        "No exception thrown for green > 255");

    assertThrown!IllegalArgumentException(new RGBA(20, 50, -1, 0),
        "No exception thrown for blue < 0");

    assertThrown!IllegalArgumentException(new RGBA(20, 50, 256, 0),
        "No exception thrown for blue > 255");

    assertThrown!IllegalArgumentException(new RGBA(20, 50, 10, -1),
        "No exception thrown for alpha < 0");

    assertThrown!IllegalArgumentException(new RGBA(20, 50, 10, 256),
        "No exception thrown for alpha > 255");
}

@("test_ConstructorFFFF")
unittest
{
    new RGBA(0f,0f,0f,0f);

    new RGBA(0f,1f,0f,0f);
    new RGBA(0f,0f,1f,1f);
    new RGBA(0f,0.6f,0.4f,0.8f);
    new RGBA(1f,0f,1f,1f);
    new RGBA(1f,1f,1f,1f);
    new RGBA(1f,0f,1f,0f);
    new RGBA(1f,1f,0f,1f);
    new RGBA(1f,0.6f,0.4f,0.8f);
    new RGBA(59f,0f,1f,1f);
    new RGBA(59f,1f,1f,1f);
    new RGBA(59f,0f,1f,1f);
    new RGBA(59f,1f,0f,1f);
    new RGBA(59f,0.6f,0.4f,0.8f);
    new RGBA(60f,0f,1f,1f);
    new RGBA(60f,1f,1f,1f);
    new RGBA(60f,0f,1f,1f);
    new RGBA(60f,1f,0f,1f);
    new RGBA(60f,0.6f,0.4f,0.8f);
    new RGBA(61f,0f,1f,1f);
    new RGBA(61f,1f,1f,1f);
    new RGBA(61f,0f,1f,1f);
    new RGBA(61f,1f,0f,1f);
    new RGBA(61f,0.6f,0.4f,0.8f);
    new RGBA(119f,0f,1f,1f);
    new RGBA(119f,1f,1f,1f);
    new RGBA(119f,0f,1f,1f);
    new RGBA(119f,1f,0f,0f);
    new RGBA(119f,0.6f,0.4f,0.8f);
    new RGBA(120f,0f,1f,1f);
    new RGBA(120f,1f,1f,1f);
    new RGBA(120f,0f,1f,1f);
    new RGBA(120f,1f,0f,0f);
    new RGBA(120f,0.6f,0.4f,0.8f);
    new RGBA(121f,0f,1f,1f);
    new RGBA(121f,1f,1f,1f);
    new RGBA(121f,0f,1f,1f);
    new RGBA(121f,1f,0f,0f);
    new RGBA(121f,0.6f,0.4f,0.8f);
    new RGBA(179f,0f,1f,1f);
    new RGBA(179f,1f,1f,1f);
    new RGBA(179f,0f,1f,1f);
    new RGBA(179f,1f,0f,0f);
    new RGBA(179f,0.6f,0.4f,0.8f);
    new RGBA(180f,0f,1f,1f);
    new RGBA(180f,1f,1f,1f);
    new RGBA(180f,0f,1f,1f);
    new RGBA(180f,1f,0f,0f);
    new RGBA(180f,0.6f,0.4f,0.8f);
    new RGBA(181f,0f,1f,1f);
    new RGBA(181f,1f,1f,1f);
    new RGBA(181f,0f,1f,1f);
    new RGBA(181f,1f,0f,0f);
    new RGBA(181f,0.6f,0.4f,0.8f);
    new RGBA(239f,0f,1f,1f);
    new RGBA(239f,1f,1f,1f);
    new RGBA(239f,0f,1f,1f);
    new RGBA(239f,1f,0f,0f);
    new RGBA(239f,0.6f,0.4f,0.8f);
    new RGBA(240f,0f,1f,1f);
    new RGBA(240f,1f,1f,1f);
    new RGBA(240f,0f,1f,1f);
    new RGBA(240f,1f,0f,0f);
    new RGBA(240f,0.6f,0.4f,0.8f);
    new RGBA(241f,0f,1f,1f);
    new RGBA(241f,1f,1f,1f);
    new RGBA(241f,0f,1f,1f);
    new RGBA(241f,1f,0f,0f);
    new RGBA(241f,0.6f,0.4f,0.8f);
    new RGBA(299f,0f,1f,1f);
    new RGBA(299f,1f,1f,1f);
    new RGBA(299f,0f,1f,1f);
    new RGBA(299f,1f,0f,0f);
    new RGBA(299f,0.6f,0.4f,0.8f);
    new RGBA(300f,0f,1f,1f);
    new RGBA(300f,1f,1f,1f);
    new RGBA(300f,0f,1f,1f);
    new RGBA(300f,1f,0f,0f);
    new RGBA(300f,0.6f,0.4f,0.8f);
    new RGBA(301f,0f,1f,1f);
    new RGBA(301f,1f,1f,1f);
    new RGBA(301f,0f,1f,1f);
    new RGBA(301f,1f,0f,0f);
    new RGBA(301f,0.6f,0.4f,0.8f);
    new RGBA(359f,0f,1f,1f);
    new RGBA(359f,1f,1f,1f);
    new RGBA(359f,0f,1f,1f);
    new RGBA(359f,1f,0f,0f);
    new RGBA(359f,0.6f,0.4f,0.8f);
    new RGBA(360f,0f,1f,1f);
    new RGBA(360f,1f,1f,1f);
    new RGBA(360f,0f,1f,1f);
    new RGBA(360f,1f,0f,0f);
    new RGBA(360f,0.6f,0.4f,0.8f);

    assertThrown!IllegalArgumentException(new RGBA(400f, 0.5f, 0.5f, 0.8f),
        "No exception thrown for hue > 360");

    assertThrown!IllegalArgumentException(new RGBA(-5f, 0.5f, 0.5f, 0.8f),
        "No exception thrown for hue < 0");

    assertThrown!IllegalArgumentException(new RGBA(200f, -0.5f, 0.5f, 0.8f),
        "No exception thrown for saturation < 0");

    assertThrown!IllegalArgumentException(new RGBA(200f, 300f, 0.5f, 0.8f),
        "No exception thrown for saturation > 1");

    assertThrown!IllegalArgumentException(new RGBA(200f, 0.5f, -0.5, 0.8f),
        "No exception thrown for brightness < 0");

    assertThrown!IllegalArgumentException(new RGBA(200f, 0.5f, 400f, 0.8f),
        "No exception thrown for brightness > 1");

    assertThrown!IllegalArgumentException(new RGBA(200f, 0.5f, 0.5f, -0.5f),
        "No exception thrown for alpha < 0");

    assertThrown!IllegalArgumentException(new RGBA(200f, 0.5f, 0.5f, 400f),
        "No exception thrown for alpha > 1");
}

@("test_equalsLjava_lang_Object")
unittest
{
    int r = 0, g = 127, b = 254, a = 254;
    RGBA rgba1 = new RGBA(r, g, b, a);
    RGBA rgba2;

    rgba2 = rgba1;
    if (rgba1 != rgba2) {
        assert(false, "Two references to the same RGBA instance not found equal");
    }

    rgba2 = new RGBA(r, g, b, a);
    if (rgba1 != rgba2) {
        assert(false, "References to two different RGBA instances with same R G B A parameters not found equal");
    }

    if (rgba1 == (new RGBA(r+1, g, b, a)) ||
        rgba1 == (new RGBA(r, g+1, b, a)) ||
        rgba1 == (new RGBA(r, g, b+1, a)) ||
        rgba1 == (new RGBA(r, g, b, a+1)) ||
        rgba1 == (new RGBA(r+1, g+1, b+1, a+1))) {
            assert(false, "Comparing two RGBA instances with different combination of R G B A parameters found equal");
    }

    float hue = 220f, sat = 0.6f, bright = 0.7f, alpha = 0.5f;
    rgba1 = new RGBA(hue, sat, bright, alpha);
    rgba2 = rgba1;
    if (rgba1 != (rgba2)) {
        assert(false, "Two references to the same RGBA instance not found equal");
    }

    rgba2 = new RGBA(hue, sat, bright, alpha);
    if (rgba1 != (rgba2)) {
        assert(false, "References to two different RGBA isntances with same H S B A parameters not found equal");
    }

    if (rgba1 == (new RGBA(hue+1, sat, bright, alpha)) ||
        rgba1 == (new RGBA(hue, sat+0.1f, bright, alpha)) ||
        rgba1 == (new RGBA(hue, sat, bright+0.1f, alpha)) ||
        rgba1 == (new RGBA(hue, sat, bright, alpha+1f)) ||
        rgba1 == (new RGBA(hue+1, sat+0.1f, bright+0.1f, alpha+1f))) {
            assert(false, "Comparing two RGBA instances with different combination of H S B A parameters found equal");
    }
}

@("test_getHSBA")
unittest
{
    float[] hsba = [
                0f,0f,0f,0f,
                0f,1f,1f,1f,
                0f,1f,0f,0f,
                0f,0f,1f,1f,
                0f,0.6f,0.4f,0.8f,
                1f,0f,1f,1f,
                1f,1f,1f,1f,
                1f,0f,1f,1f,
                1f,1f,0f,0f,
                1f,0.6f,0.4f,0.8f,
                59f,0f,1f,1f,
                59f,1f,1f,1f,
                59f,0f,1f,1f,
                59f,1f,0f,0f,
                59f,0.6f,0.4f,0.8f,
                60f,0f,1f,1f,
                60f,1f,1f,1f,
                60f,0f,1f,1f,
                60f,1f,0f,0f,
                60f,0.6f,0.4f,0.8f,
                61f,0f,1f,1f,
                61f,1f,1f,1f,
                61f,0f,1f,1f,
                61f,1f,0f,0f,
                61f,0.6f,0.4f,0.8f,
                119f,0f,1f,1f,
                119f,1f,1f,1f,
                119f,0f,1f,1f,
                119f,1f,0f,0f,
                119f,0.6f,0.4f,0.8f,
                120f,0f,1f,1f,
                120f,1f,1f,1f,
                120f,0f,1f,1f,
                120f,1f,0f,0f,
                120f,0.6f,0.4f,0.8f,
                121f,0f,1f,1f,
                121f,1f,1f,1f,
                121f,0f,1f,1f,
                121f,1f,0f,0f,
                121f,0.6f,0.4f,0.8f,
                179f,0f,1f,1f,
                179f,1f,1f,1f,
                179f,0f,1f,1f,
                179f,1f,0f,0f,
                179f,0.6f,0.4f,0.8f,
                180f,0f,1f,1f,
                180f,1f,1f,1f,
                180f,0f,1f,1f,
                180f,1f,0f,0f,
                180f,0.6f,0.4f,0.8f,
                181f,0f,1f,1f,
                181f,1f,1f,1f,
                181f,0f,1f,1f,
                181f,1f,0f,0f,
                181f,0.6f,0.4f,0.8f,
                239f,0f,1f,1f,
                239f,1f,1f,1f,
                239f,0f,1f,1f,
                239f,1f,0f,0f,
                239f,0.6f,0.4f,0.8f,
                240f,0f,1f,1f,
                240f,1f,1f,1f,
                240f,0f,1f,1f,
                240f,1f,0f,0f,
                240f,0.6f,0.4f,0.8f,
                241f,0f,1f,1f,
                241f,1f,1f,1f,
                241f,0f,1f,1f,
                241f,1f,0f,0f,
                241f,0.6f,0.4f,0.8f,
                299f,0f,1f,1f,
                299f,1f,1f,1f,
                299f,0f,1f,1f,
                299f,1f,0f,0f,
                299f,0.6f,0.4f,0.8f,
                300f,0f,1f,1f,
                300f,1f,1f,1f,
                300f,0f,1f,1f,
                300f,1f,0f,0f,
                300f,0.6f,0.4f,0.8f,
                301f,0f,1f,1f,
                301f,1f,1f,1f,
                301f,0f,1f,1f,
                301f,1f,0f,0f,
                301f,0.6f,0.4f,0.8f,
                359f,0f,1f,1f,
                359f,1f,1f,1f,
                359f,0f,1f,1f,
                359f,1f,0f,0f,
                359f,0.6f,0.4f,0.8f,
                360f,0f,1f,1f,
                360f,1f,1f,1f,
                360f,0f,1f,1f,
                360f,1f,0f,0f,
                360f,0.6f,0.4f,0.8f,
                220f,0.6f,0.7f,0.8f];
    for (int i = 0; i < hsba.length; i+=4) {
        RGBA rgba1 = new RGBA(hsba[i], hsba[i+1], hsba[i+2], hsba[i+3]);
        float[] hsba2 = rgba1.getHSBA();
        RGBA rgba2 = new RGBA(hsba2[0], hsba2[1], hsba2[2], hsba2[3]);
        if (rgba1 != rgba2) {
            assert(false, "Two references to the same RGBA using getHSBA() function not found equal");
        }
    }
}

@("test_hashCode")
unittest
{
    int r = 255, g = 100, b = 0, a = 0, different = 150;
    RGBA rgba1 = new RGBA(r, g, b, a);
    RGBA rgba2 = new RGBA(r, g, b, a);

    size_t hash1 = rgba1.toHash();
    size_t hash2 = rgba2.toHash();

    if (hash1 != hash2) {
        assert(false, "Two RGBA instances with same R G B A parameters returned different hash codes");
    }

    if (rgba1.toHash() == new RGBA(g, b, r, a).toHash() ||
        rgba1.toHash() == new RGBA(b, r, g, a).toHash()) {
            assert(false, "Two RGBA instances with different R G B A parameters returned the same hash code");
    }

    if (rgba1.toHash() == new RGBA(different, g, b, a).toHash()) {
        assert(false, "Two RGBA instances with different RED parameters returned the same hash code");
    }

    if (rgba1.toHash() == new RGBA(r, different, b, a).toHash()) {
        assert(false, "Two RGBA instances with different GREEN parameters returned the same hash code");
    }

    if (rgba1.toHash() == new RGBA(r, g, different, a).toHash()) {
        assert(false, "Two RGBA instances with different BLUE parameters returned the same hash code");
    }

    if (rgba1.toHash() == new RGBA(r, g, b, different).toHash()) {
        assert(false, "Two RGBA instances with different ALPHA parameters returned the same hash code");
    }
}

@("test_toString")
unittest
{
    RGBA rgba = new RGBA(0, 100, 200, 255);

    String s = rgba.toString();

    if (s is null || s.length() == 0) {
        assert(false, "RGBA.toString returns a null or empty string");
    }
}
