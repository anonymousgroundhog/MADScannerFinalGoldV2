.class public abstract Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.super Ljava/lang/Object;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DockableElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p3}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract getId()I
.end method

.method public getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 252
    new-instance v0, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTarget()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getToolListener()Lcom/brakefield/painter/ui/DockableElements$ToolListener;
    .locals 1

    .line 291
    new-instance v0, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    return-object v0
.end method

.method public abstract getToolTip()Ljava/lang/String;
.end method

.method protected abstract getUIBindingKey()I
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 4

    .line 267
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 270
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 271
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 276
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getToolTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getUIBindingKey()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0663

    invoke-virtual {v0, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 278
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getTarget()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 285
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getToolListener()Lcom/brakefield/painter/ui/DockableElements$ToolListener;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->setDragListener(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Lcom/brakefield/painter/ui/DockableElements$ToolListener;)V

    return-object v0
.end method

.method protected abstract handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
.end method

.method protected isElementActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$getOnClickListener$0$com-brakefield-painter-ui-DockableElements$DockableElement(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->isPaidFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "From tool: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getToolTip()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    :goto_0
    return-void
.end method
