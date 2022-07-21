# python-moderngl-window-proxy

A proxy for demonstrating use of and verifying compatibility of the upstream modern GL window library.


## Usage

### Test

```console
❯ python test/test_mglw.py --window headless
❯ python test/test_mglw.py --window pyglet
❯ python test/test_mglw.py --window pygame2
❯ python test/test_mglw.py --window glfw
❯ python test/test_mglw.py --window sdl2
# Not working (yet):
# + python test/test_mglw.py --window pyside2
# + python test/test_mglw.py --window pyqt5
# + python test/test_mglw.py --window tk
```

### Example

```console
❯ python example/headless.py --window headless
# ...
❯ exiftool triangle.png 
ExifTool Version Number         : 12.42
File Name                       : triangle.png
Directory                       : .
File Size                       : 34 kB
File Modification Date/Time     : 2022:07:03 11:13:28+02:00
File Access Date/Time           : 2022:07:03 11:13:46+02:00
File Inode Change Date/Time     : 2022:07:03 11:13:44+02:00
File Permissions                : -rw-r--r--
File Type                       : PNG
File Type Extension             : png
MIME Type                       : image/png
Image Width                     : 1280
Image Height                    : 720
Bit Depth                       : 8
Color Type                      : RGB with Alpha
Compression                     : Deflate/Inflate
Filter                          : Adaptive
Interlace                       : Noninterlaced
Image Size                      : 1280x720
Megapixels                      : 0.922
```

For upstream information visit [moderngl/moderngl-window](https://github.com/moderngl/moderngl-window).

## Status

Experimental.

**Note**: The default branch is `default`.
