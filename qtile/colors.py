# ~/.config/qtile/colors.py

from os import environ
import tomllib

colors = dict()

target_colors = [
    "black",
    "white",
    "red",
    "yellow",
    "green",
    "blue",
    "cyan",
    "magenta",
]

with open(f"{environ['HOME']}/.config/global/themes/current.toml", "rb") as file:
    theme = tomllib.load(file)["colors"]
    variant = "normal"

    colors = dict(
        primary   = theme["normal"]["magenta"],
        secondary = theme["primary"]["background"],
    )

    for color in target_colors:
        colors[color] = theme[variant][color]

