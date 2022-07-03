# python-moderngl-window-proxy

A proxy for demonstrating use of and verifying compatibility of the upstream modern GL window library.

## Usage

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

For upstream information visit [moderngl/moderngl-window](https://github.com/moderngl/moderngl-window).

## Status

Experimental.

**Note**: The default branch is `default`.
