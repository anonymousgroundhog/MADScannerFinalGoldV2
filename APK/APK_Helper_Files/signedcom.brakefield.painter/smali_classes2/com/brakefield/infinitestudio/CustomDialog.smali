.class public Lcom/brakefield/infinitestudio/CustomDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "CustomDialog.java"


# instance fields
.field private popup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$popup$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getOptionsItem(Lcom/brakefield/infinitestudio/MenuOption;)Landroid/view/View;
    .locals 5

    .line 63
    instance-of v0, p1, Lcom/brakefield/infinitestudio/InktoberLegalMenuOption;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$layout;->inktober_legal_item:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/brakefield/infinitestudio/R$layout;->design_options_item:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    sget v1, Lcom/brakefield/infinitestudio/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 70
    iget-object v2, p1, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/CustomDialog;Lcom/brakefield/infinitestudio/MenuOption;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 77
    sget v1, Lcom/brakefield/infinitestudio/R$id;->text_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    sget v2, Lcom/brakefield/infinitestudio/R$id;->text_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 80
    iget-boolean v3, p1, Lcom/brakefield/infinitestudio/MenuOption;->hasIcon:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 81
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 82
    iget v3, p1, Lcom/brakefield/infinitestudio/MenuOption;->resId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_0
    iget-boolean v1, p1, Lcom/brakefield/infinitestudio/MenuOption;->hasImage:Z

    if-eqz v1, :cond_2

    .line 86
    iget p1, p1, Lcom/brakefield/infinitestudio/MenuOption;->imageId:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getPopup()Landroid/widget/PopupWindow;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method synthetic lambda$getOptionsItem$0$com-brakefield-infinitestudio-CustomDialog(Lcom/brakefield/infinitestudio/MenuOption;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->dismiss()V

    .line 73
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/MenuOption;->onClicked()V

    return-void
.end method

.method synthetic lambda$setNegativeButton$3$com-brakefield-infinitestudio-CustomDialog(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->cancel()V

    return-void
.end method

.method synthetic lambda$setNeutralButton$1$com-brakefield-infinitestudio-CustomDialog(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$setPositiveButton$2$com-brakefield-infinitestudio-CustomDialog(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 38
    sget p1, Lcom/brakefield/infinitestudio/R$layout;->custom_l_dialog:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/CustomDialog;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x20008

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public popup(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 8

    .line 202
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getOpaqueColor(I)I

    move-result v0

    .line 204
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance p1, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p2, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    const/high16 p1, 0x40000000    # 2.0f

    .line 211
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    .line 213
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x1

    aput p1, v4, v5

    const/4 v6, 0x2

    aput p1, v4, v6

    const/4 v7, 0x3

    aput p1, v4, v7

    const/4 v7, 0x4

    aput p1, v4, v7

    const/4 v7, 0x5

    aput p1, v4, v7

    const/4 v7, 0x6

    aput p1, v4, v7

    const/4 v7, 0x7

    aput p1, v4, v7

    const/4 p1, 0x0

    invoke-direct {v3, v4, p1, p1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 215
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 219
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 220
    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    new-array p1, v6, [I

    .line 225
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v6

    .line 226
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v6

    .line 227
    iget-object v2, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v2

    .line 228
    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 229
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 231
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v6

    .line 232
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/2addr p2, v6

    neg-int v4, v4

    add-int/2addr v4, v0

    neg-int v0, p2

    add-int/2addr v0, v1

    neg-int v1, v0

    if-le v1, v2, :cond_0

    neg-int v0, v3

    goto :goto_0

    :cond_0
    aget p1, p1, v5

    add-int v1, p1, v0

    if-gez v1, :cond_1

    neg-int p1, p1

    sub-int v0, p1, v3

    goto :goto_0

    :cond_1
    add-int v1, p1, v0

    mul-int/2addr p2, v6

    add-int/2addr v1, p2

    if-le v1, v2, :cond_2

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 241
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p3, v4, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 243
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 137
    sget v0, Lcom/brakefield/infinitestudio/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 124
    sget v0, Lcom/brakefield/infinitestudio/R$id;->buttons:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    sget v0, Lcom/brakefield/infinitestudio/R$id;->negative_button:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance p1, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/CustomDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 96
    sget v0, Lcom/brakefield/infinitestudio/R$id;->buttons:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    sget v0, Lcom/brakefield/infinitestudio/R$id;->neutral_button:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p1, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/CustomDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/MenuOption;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->design_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    sget v1, Lcom/brakefield/infinitestudio/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/MenuOption;

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/CustomDialog;->getOptionsItem(Lcom/brakefield/infinitestudio/MenuOption;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 110
    sget v0, Lcom/brakefield/infinitestudio/R$id;->buttons:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    sget v0, Lcom/brakefield/infinitestudio/R$id;->positive_button:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance p1, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/CustomDialog$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/CustomDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 43
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 45
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 49
    sget v0, Lcom/brakefield/infinitestudio/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/MenuOption;",
            ">;)",
            "Landroid/widget/PopupWindow;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->design_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    sget v1, Lcom/brakefield/infinitestudio/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/brakefield/infinitestudio/R$dimen;->padding_medium:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 151
    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 155
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/MenuOption;

    .line 156
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/CustomDialog;->getOptionsItem(Lcom/brakefield/infinitestudio/MenuOption;)Landroid/view/View;

    move-result-object v3

    if-nez p3, :cond_0

    move-object p3, v3

    .line 158
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance p1, Landroid/widget/PopupWindow;

    const/4 p3, -0x2

    invoke-direct {p1, v0, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41200000    # 10.0f

    .line 162
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 165
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    .line 167
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v7, 0x2

    aput p1, v5, v7

    const/4 v8, 0x3

    aput p1, v5, v8

    const/4 v8, 0x4

    aput p1, v5, v8

    const/4 v8, 0x5

    aput p1, v5, v8

    const/4 v8, 0x6

    aput p1, v5, v8

    const/4 v8, 0x7

    aput p1, v5, v8

    invoke-direct {v4, v5, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 168
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getOpaqueColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 169
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    .line 174
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 175
    invoke-virtual {v0, p3, p3}, Landroid/view/View;->measure(II)V

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v7

    .line 178
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    div-int/2addr p3, v7

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v7

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v7

    neg-int v1, v1

    add-int/2addr v1, p1

    neg-int p1, v0

    add-int/2addr p1, p3

    .line 186
    iget-object p3, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result p3

    new-array v2, v7, [I

    .line 189
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    neg-int v3, p1

    if-le v3, p3, :cond_2

    neg-int p1, p3

    goto :goto_1

    :cond_2
    aget v2, v2, v6

    add-int v3, v2, p1

    if-gez v3, :cond_3

    neg-int p1, v2

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_3
    add-int v3, v2, p1

    mul-int/2addr v0, v7

    add-int/2addr v3, v0

    if-le v3, p3, :cond_4

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    sub-int/2addr p3, v2

    add-int/2addr p1, p3

    .line 195
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p2, v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 197
    iget-object p1, p0, Lcom/brakefield/infinitestudio/CustomDialog;->popup:Landroid/widget/PopupWindow;

    return-object p1
.end method
