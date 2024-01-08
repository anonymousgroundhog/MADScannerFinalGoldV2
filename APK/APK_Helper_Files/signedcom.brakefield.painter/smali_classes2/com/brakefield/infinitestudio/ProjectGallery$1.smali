.class Lcom/brakefield/infinitestudio/ProjectGallery$1;
.super Ljava/lang/Object;
.source "ProjectGallery.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;->show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

.field final synthetic val$bottomBar:Landroid/view/View;

.field final synthetic val$endY:F

.field final synthetic val$splashOverlay:Landroid/view/View;

.field final synthetic val$topBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    iput-object p4, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$splashOverlay:Landroid/view/View;

    iput p5, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$endY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDown(F)V
    .locals 11

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    move v1, v2

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v1, v1, v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v6, 0x3f400000    # 0.75f

    sub-float v7, p1, v6

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    cmpg-float v1, v7, v3

    if-gez v1, :cond_3

    move v7, v3

    :cond_3
    cmpl-float v1, v7, v2

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v7

    .line 248
    :goto_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v1, v2, v3

    if-nez v1, :cond_5

    .line 249
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 250
    :cond_5
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_2
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$splashOverlay:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    if-nez v1, :cond_6

    .line 253
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$splashOverlay:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$splashOverlay:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_3
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getFABButtonColor()I

    move-result v1

    .line 258
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getFABIconColor()I

    move-result v2

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v7, p1, v6

    .line 259
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v0

    float-to-double v7, v7

    const-wide v9, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v0, v7

    cmpl-float p1, p1, v6

    if-lez p1, :cond_8

    .line 261
    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->DARK:I

    .line 262
    sget v2, Lcom/brakefield/infinitestudio/color/Colors;->WHITE:I

    .line 263
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_7
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->uploads:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 268
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 270
    iget p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$endY:F

    mul-float/2addr p1, v0

    .line 272
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 273
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->hasCommunity()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 279
    :cond_8
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    sget v6, Lcom/brakefield/infinitestudio/R$drawable;->add_small:I

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 282
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$200(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 287
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 288
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 289
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$300(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->setColor(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$400(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/SlideshowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 306
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 307
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$bottomBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$1;->val$topBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
