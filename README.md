# Simple Resource Pack

An SVG based texture pack aimed for easy extending for mods. The goal is high
resolution and easy to extend. Primarily this is intended to be a texture pack
that can easily be extended to cover mods added to minecraft.

# License

All SVG's in this pack are provided under the [GPL]. The intent is that if
someone improves an SVG source image it makes it back here, but whatever anyone
does with the rendered images is up to them so long as there is a  link back to
here.

# Editing

If you wish to contribute, please grab a copy of the Open Source vector editing program, [Inkscape]. This is the tool used both to edit and render the svg's to png files.

# Design Approach

This is evolving but so far we have:

- Soft color gradients (feather, std-dev 3, use xml-editor to change) for natural materials (sand, dirt, grass)
- Hard color edges for manufactured 'In Base' materials (panel, bricks, furnace)
- Minimal detail.  If in doubt, do less (less, gradient, less objects, etc)
- Curves where possible. Slight curve on wood panel edges for example.
- Minimal palette - feathered edges excepted.

# Building

Make sure inkscape is in your path and that you have GNU make

- Checkout
- make
- look in build.

[Inkscape]: http://www.inkscape.org/
[GPL]: https://www.gnu.org/copyleft/gpl.html
