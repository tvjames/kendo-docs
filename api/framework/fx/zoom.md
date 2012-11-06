---
title: FX Zoom
slug: fx-zoom
publish: true
---

# Zoom

Zoom the element in or out.
Supported directions are `in` and `out`.

    <div id="foo">
        I will be animated
    </div>

    <script>
        kendo.fx($("#foo")).zoom("out").play();
        // or
        kendo.fx($("#foo")).zoomOut.play();
    </script>

## Constructor Parameters

### Direction

The direction of the effect.

