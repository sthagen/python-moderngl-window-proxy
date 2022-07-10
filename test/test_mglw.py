import moderngl_window as mglw  # type:ignore


class Test(mglw.WindowConfig):  # type: ignore
    gl_version = (3, 3)

    def render(self, time, frametime):  # type: ignore
        self.ctx.clear(1.0, 0.0, 0.0, 0.0)


Test.run()
