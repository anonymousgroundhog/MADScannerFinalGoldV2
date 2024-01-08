.class public Lcom/brakefield/painter/fragments/DrawableTabFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "DrawableTabFragment.java"


# static fields
.field public static final DRAWABLE_KEY:Ljava/lang/String; = "DRAWABLE_KEY"

.field public static final STRING_KEY:Ljava/lang/String; = "STRING_KEY"


# instance fields
.field drawableId:I

.field stringId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    return-void
.end method

.method public static createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;
    .locals 2

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DRAWABLE_KEY"

    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "STRING_KEY"

    .line 63
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    new-instance p0, Lcom/brakefield/painter/fragments/DrawableTabFragment;

    invoke-direct {p0}, Lcom/brakefield/painter/fragments/DrawableTabFragment;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private unbundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "DRAWABLE_KEY"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/fragments/DrawableTabFragment;->drawableId:I

    const-string v0, "STRING_KEY"

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/fragments/DrawableTabFragment;->stringId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget v0, p0, Lcom/brakefield/painter/fragments/DrawableTabFragment;->stringId:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/TabFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->unbundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/high16 p1, 0x40800000    # 4.0f

    .line 50
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    .line 51
    new-instance p2, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p1

    .line 52
    invoke-virtual {p2, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(F)V

    .line 53
    iget p1, p0, Lcom/brakefield/painter/fragments/DrawableTabFragment;->drawableId:I

    invoke-virtual {p2, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    .line 54
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/TabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->unbundle(Landroid/os/Bundle;)V

    return-void
.end method
