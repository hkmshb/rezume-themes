import chevron
from pathlib import Path
from rezume import Rezume


__version__ = "0.1.0"


def render(rezume: Rezume):
    """Renders the provide Rezume using template/rezume.mst template file.
    """
    base_dir = Path(__file__).absolute().parent
    template = base_dir / "template" / "rezume.mst"

    assert template is not None

    with template.open("r") as tf:
        data = rezume.dump_data()
        html = chevron.render(tf, {"rezume": data})
        return html
