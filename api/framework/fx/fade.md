---
title: FX Fade
slug: fx-fade
publish: true
---

# Fade

Fades the element in or out.
Supported directions are `in` and `out`.

    <div id="foo">
        I will be animated
    </div>

    <script>
        kendo.fx($("#foo")).fade("out").play();
        // or
        kendo.fx($("#foo")).fadeOut.play();
    </script>

## Constructor Parameters

### Direction

The direction of the effect.
