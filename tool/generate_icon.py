#!/usr/bin/env python3
"""Generate the MoniTune launcher icon (monitor + tuning sliders).

Produces, straight into the Android res tree:
  - mipmap-<dpi>/ic_launcher.png            (legacy, rounded)
  - mipmap-<dpi>/ic_launcher_foreground.png (adaptive foreground)
  - mipmap-<dpi>/ic_launcher_background.png (adaptive background)
  - mipmap-anydpi-v26/ic_launcher.xml       (adaptive icon)

Run:  python3 tool/generate_icon.py
"""
import os
from PIL import Image, ImageDraw

INDIGO = (99, 102, 241)   # #6366F1
CYAN = (34, 211, 238)     # #22D3EE
WHITE = (255, 255, 255)

ROOT = os.path.join(os.path.dirname(__file__), "..", "android", "app", "src", "main", "res")

DPI = {
    "mdpi": 1.0,
    "hdpi": 1.5,
    "xhdpi": 2.0,
    "xxhdpi": 3.0,
    "xxxhdpi": 4.0,
}

SS = 2  # supersample factor


def lerp(a, b, t):
    return tuple(int(round(a[i] + (b[i] - a[i]) * t)) for i in range(3))


def gradient(size, c1=INDIGO, c2=CYAN):
    n = 256
    base = Image.new("RGB", (n, n))
    px = base.load()
    for y in range(n):
        for x in range(n):
            t = (x + y) / (2 * (n - 1))
            px[x, y] = lerp(c1, c2, t)
    return base.resize((size, size), Image.LANCZOS)


def draw_glyph(draw, box, stroke):
    """Draw a monitor with three tuning sliders inside, within `box` (l,t,r,b)."""
    l, t, r, b = box
    w = r - l
    h = b - t
    radius = int(w * 0.10)
    draw.rounded_rectangle([l, t, r, b], radius=radius, outline=WHITE, width=stroke)

    # Stand + base.
    stand_w = int(w * 0.16)
    cx = (l + r) // 2
    stand_h = int(h * 0.14)
    draw.rectangle([cx - stand_w // 2, b, cx + stand_w // 2, b + stand_h], fill=WHITE)
    base_w = int(w * 0.42)
    base_h = max(2, int(stroke * 0.9))
    draw.rounded_rectangle(
        [cx - base_w // 2, b + stand_h, cx + base_w // 2, b + stand_h + base_h],
        radius=base_h // 2, fill=WHITE,
    )

    # Three sliders inside the screen.
    pad = int(w * 0.14)
    slider_l = l + pad
    slider_r = r - pad
    knob_r = max(3, int(h * 0.075))
    positions = [0.32, 0.68, 0.5]
    for i, frac in enumerate(positions):
        y = int(t + h * (0.30 + i * 0.20))
        line_w = max(2, int(stroke * 0.75))
        draw.line([slider_l, y, slider_r, y], fill=WHITE, width=line_w)
        kx = int(slider_l + (slider_r - slider_l) * frac)
        draw.ellipse([kx - knob_r, y - knob_r, kx + knob_r, y + knob_r], fill=WHITE)


def render_full(size):
    """Legacy icon: rounded gradient background + glyph."""
    big = size * SS
    icon = gradient(big).convert("RGBA")
    mask = Image.new("L", (big, big), 0)
    ImageDraw.Draw(mask).rounded_rectangle(
        [0, 0, big - 1, big - 1], radius=int(big * 0.22), fill=255
    )
    icon.putalpha(mask)

    d = ImageDraw.Draw(icon)
    stroke = max(3, int(big * 0.045))
    m = int(big * 0.20)
    box = (m, int(big * 0.26), big - m, int(big * 0.66))
    draw_glyph(d, box, stroke)
    return icon.resize((size, size), Image.LANCZOS)


def render_foreground(size):
    """Adaptive foreground: glyph only, inside the 66% safe zone, transparent."""
    big = size * SS
    fg = Image.new("RGBA", (big, big), (0, 0, 0, 0))
    d = ImageDraw.Draw(fg)
    stroke = max(3, int(big * 0.040))
    m = int(big * 0.28)
    box = (m, int(big * 0.31), big - m, int(big * 0.62))
    draw_glyph(d, box, stroke)
    return fg.resize((size, size), Image.LANCZOS)


def render_background(size):
    return gradient(size).convert("RGBA")


def main():
    for bucket, scale in DPI.items():
        out_dir = os.path.join(ROOT, f"mipmap-{bucket}")
        os.makedirs(out_dir, exist_ok=True)

        legacy = int(48 * scale)
        render_full(legacy).save(os.path.join(out_dir, "ic_launcher.png"))

        layer = int(108 * scale)
        render_foreground(layer).save(os.path.join(out_dir, "ic_launcher_foreground.png"))
        render_background(layer).save(os.path.join(out_dir, "ic_launcher_background.png"))

        print(f"wrote mipmap-{bucket} (legacy {legacy}px, layers {layer}px)")

    anydpi = os.path.join(ROOT, "mipmap-anydpi-v26")
    os.makedirs(anydpi, exist_ok=True)
    with open(os.path.join(anydpi, "ic_launcher.xml"), "w") as f:
        f.write(
            '<?xml version="1.0" encoding="utf-8"?>\n'
            '<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">\n'
            '    <background android:drawable="@mipmap/ic_launcher_background" />\n'
            '    <foreground android:drawable="@mipmap/ic_launcher_foreground" />\n'
            '</adaptive-icon>\n'
        )
    print("wrote mipmap-anydpi-v26/ic_launcher.xml")


if __name__ == "__main__":
    main()
