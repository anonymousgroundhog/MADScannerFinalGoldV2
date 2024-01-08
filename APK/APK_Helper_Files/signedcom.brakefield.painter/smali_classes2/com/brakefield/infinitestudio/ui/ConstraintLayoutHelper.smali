.class public Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper;
.super Ljava/lang/Object;
.source "ConstraintLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper$DefaultConstraints;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static above(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 103
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static addView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper;->addView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper$DefaultConstraints;)V

    return-void
.end method

.method public static addView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper$DefaultConstraints;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 26
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 27
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-eqz p2, :cond_1

    .line 29
    invoke-interface {p2, p1, v0}, Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper$DefaultConstraints;->apply(Landroidx/constraintlayout/widget/ConstraintSet;I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->centerHorizontally(II)V

    .line 32
    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->centerVertically(II)V

    .line 35
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static below(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 107
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static fillHeight(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    return-void
.end method

.method public static fillWidth(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    return-void
.end method

.method public static leftOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static place(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;FF)V
    .locals 8

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v0, :cond_0

    const/4 v0, -0x2

    .line 116
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_0
    move v6, v0

    move v7, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 121
    invoke-static/range {v2 .. v7}, Lcom/brakefield/infinitestudio/ui/ConstraintLayoutHelper;->place(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;FFII)V

    return-void
.end method

.method public static place(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;FFII)V
    .locals 5

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 129
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 130
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p4

    sub-float/2addr v0, v2

    int-to-float v3, p5

    sub-float/2addr v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr p2, v2

    mul-float/2addr v3, v4

    sub-float/2addr p3, v3

    div-float/2addr p2, v0

    div-float/2addr p3, v1

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p2, v2

    if-lez v1, :cond_1

    move p2, v2

    :cond_1
    :goto_0
    cmpg-float v1, p3, v0

    if-gez v1, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    cmpl-float v0, p3, v2

    if-lez v0, :cond_3

    move p3, v2

    .line 148
    :cond_3
    :goto_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 149
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 151
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v1, 0x2

    .line 154
    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v1, 0x3

    .line 155
    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v1, 0x4

    .line 156
    invoke-virtual {v0, p1, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 157
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 158
    invoke-virtual {v0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 160
    invoke-virtual {v0, p1, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 161
    invoke-virtual {v0, p1, p5}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 163
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static rightOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 99
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static setMaxHeight(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxHeight(II)V

    return-void
.end method

.method public static setMaxWidth(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    return-void
.end method

.method public static snapToBottom(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static snapToLeft(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static snapToRight(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static snapToTop(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method public static toBottom(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method

.method public static toLeft(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method

.method public static toRight(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method

.method public static toTop(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 6

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method

.method public static wrapHeight(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 1

    const/4 v0, -0x2

    .line 91
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    return-void
.end method

.method public static wrapWidth(Landroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 1

    const/4 v0, -0x2

    .line 87
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    return-void
.end method
