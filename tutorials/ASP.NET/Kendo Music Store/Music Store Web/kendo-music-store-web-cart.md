---
title: Shopping Cart Implementation
slug: kendo-music-store-cart
tags: Tutorial
publish: true
---

# Shopping Cart Implementation - Kendo Music Store

The shopping cart for the Kendo Music Store is in **Scripts\App\cart.js**.
All the functionality for the cart is encapsulated in a single object, created by calling the **Cart()** constructor.

## Storing Cart Data

The data for the items in the cart is held in the browser's HTML5 Local Storage.
No data is sent back to the server when items are added or removed from the cart.

Anywhere in the Music Store that the cart needs to be accessed, the **cart.getCart()** method is called.
This returns a Kendo DataSource object that cotnains the cart items.
It also listens for the **change** event on the DataSource and on change recalculates the total price for each item.
Once the totals are updated, the cart data is also updated in the local storage.

## Benefits of a Shared Cart DataSource

By providing a DataSource to bind against for cart data we give all parts of the application a way to be notified
of cart data updates.
For example, singe the cart menu widget and cart checkout view are bound to the same datasource, if you navigate
to the checkout page and remove an item from the cart the cart menu widget will immidiately update.
No extra JavaScript had to be written to accomplish this. It is notified of the DataSource change and knows to update.
