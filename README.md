TestBorder
==========

    // randomizes border colors for all subviews contained within the view
    
    - (void)addBordersToSubviewsWithRandomColors;


    // takes a single fadeColor as input, and adds borders to all subviews with varying fade amount
    // 1. the dimmest faded border is the subview at index 0 ( self.subviews[0] )
    // 2. the brightest faded border is the subview closest to the last index ( self.subviews[self.subviews.count - 1] )
    // this hopefully adds some perspective when testing whether certain subviews are above or below others in the superview
    
    - (void)addBordersToSubviewsWithFadingColor:(UIColor *)fadeColor;



