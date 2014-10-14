---
tags: ibaction, iboutlet, uitextfield, views, testing
languages: objc
---

# stale-indirect

Let's re-create a shopping checkout process. This time, you write the tests

## Instructions

### The Models

  1. You should have two models: `FISCart` and `FISItem`. Your `FISItem` should track the item name and price. 
  2. The `FISCart` should track how many of each item you have, and the items themselves. Also it should be able to return a Total.
  3. Make sure this is fully tested! Here is the template (this one is for `FISCart`):
  
  ```objc
#import "FISCart.h"


SpecBegin(FISCart)

describe(@"FISCart", ^{
    
    beforeAll(^{

    });
    
    beforeEach(^{

    });
    
    it(@"", ^{

    });  
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
```

### The Views

  1. Create a view that looks somewhat like this:
  ![](http://ironboard-curriculum-content.s3.amazonaws.com/iOS/stale-indirect-screenshot.png)
  2. Whenever a user updates the `UITextField` with the quantity, be sure to change all of the costs.
  3. Test it!

## Advanced

  1. Build in coupon model. Coupons are pretty complex if you think about it. You will need to handle the following situations:
    1. Percentage based coupons
    2. Money off in a dollar amount
    3. Certain products are not eligible for a discount
    4. Discounts can expire based on time.
  2. Make this tested... it's pretty hard to test this fully!

## Hints

  1. The `UITextField` can have an `IBAction` on the `didEndOnExit` action.
