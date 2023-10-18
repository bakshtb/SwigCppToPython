try:
    import Rectangle

    r = Rectangle.Rectangle(4.0, 5.0)
    print("Area:", r.getArea())
    print("Perimeter:", r.getPerimeter())

    # Indicate that the test passed in green
    print("\x1b[32mTest passed\x1b[0m")  # 32 is the ANSI code for green, [0m resets the color
except Exception as e:
    # Handle any exceptions that may occur and print "Error" in red
    print("\x1b[31mTest not passed. Error:", e, "\x1b[0m")  # 31 is the ANSI code for red, [0m resets the color
