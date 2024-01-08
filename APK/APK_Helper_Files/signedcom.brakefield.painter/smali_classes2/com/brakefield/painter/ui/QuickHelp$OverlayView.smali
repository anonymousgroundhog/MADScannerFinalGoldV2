.class Lcom/brakefield/painter/ui/QuickHelp$OverlayView;
.super Landroid/view/View;
.source "QuickHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/QuickHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayView"
.end annotation


# instance fields
.field private animatingTouchZoneViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Landroid/animation/ValueAnimator;

.field private app:Lcom/brakefield/painter/app/PainterApp;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final fillPaint:Landroid/graphics/Paint;

.field private indicator:Landroid/view/View;

.field private final outlineErrorPaint:Landroid/graphics/Paint;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private selectedTouchZone:Landroid/view/View;

.field private viewGroup:Landroid/view/ViewGroup;

.field private visualizeCoverage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->clearPaint:Landroid/graphics/Paint;

    .line 128
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    .line 130
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlineErrorPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->visualizeCoverage:Z

    .line 134
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    .line 138
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animatingTouchZoneViews:Ljava/util/List;

    .line 143
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setup()V

    return-void
.end method

.method static synthetic access$002(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private drawTouchZones(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 188
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->indicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 191
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v6, v2, v0

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v5, v1

    sget v7, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 199
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 204
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 207
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 209
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 212
    iget-object v2, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const v2, 0x7f0a0663

    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-direct {p0, v2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->isValidKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/brakefield/painter/app/PainterApp;->canBindInteractions(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlineErrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 270
    :try_start_0
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result p2

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTouchZoneViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->populateTouchZones(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .locals 4

    .line 262
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mappings_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_title"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private populateTouchZones(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 240
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 244
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 245
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    .line 246
    invoke-direct {p0, v5, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->populateTouchZones(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_2
    const v5, 0x7f0a0663

    .line 248
    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 249
    invoke-interface {p2, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 251
    invoke-interface {p2, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private showLearnMore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_WEBSITE_URL"

    .line 323
    invoke-static {p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getReferenceManualPageURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPopover(Landroid/content/Context;Landroid/view/View;)V
    .locals 11

    const v0, 0x7f0a0663

    .line 279
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mappings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    const-string v4, ""

    if-eqz v3, :cond_4

    .line 287
    invoke-virtual {v3, p2}, Lcom/brakefield/painter/app/PainterApp;->findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 289
    invoke-virtual {v3}, Lcom/infinite/app/ui/UIComponent;->getClickInteraction()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "events_"

    if-eqz v5, :cond_2

    .line 291
    iget-object v4, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v3}, Lcom/infinite/app/ui/UIComponent;->getClickInteraction()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/brakefield/painter/app/PainterApp;->getEventNameFromInteraction(J)Ljava/lang/String;

    move-result-object v4

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\n\nTap  \u2b95  "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "\n\nTap  \u2b95  ---"

    .line 299
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/infinite/app/ui/UIComponent;->getLongpressInteraction()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-eqz v5, :cond_4

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\nLongpress  \u2b95  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object v5, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v3}, Lcom/infinite/app/ui/UIComponent;->getLongpressInteraction()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/brakefield/painter/app/PainterApp;->getEventNameFromInteraction(J)Ljava/lang/String;

    move-result-object v3

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 306
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 315
    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 316
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f120235

    invoke-virtual {v2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string p1, "Close"

    const/4 p2, 0x0

    .line 317
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 318
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 399
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$1;-><init>(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 414
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method getTouchZoneAt(Ljava/util/List;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 377
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 379
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 380
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 382
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const p1, 0x7f0a0663

    .line 383
    invoke-virtual {v2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method synthetic lambda$showPopover$0$com-brakefield-painter-ui-QuickHelp$OverlayView(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->showLearnMore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 177
    invoke-direct {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getTouchZoneViews()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->drawTouchZones(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method onTouchCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    return-void
.end method

.method onTouchDown(II)V
    .locals 1

    .line 354
    invoke-direct {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getTouchZoneViews()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-virtual {p0, v0, p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getTouchZoneAt(Ljava/util/List;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 330
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->visualizeCoverage:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->onTouchCancel()V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->onTouchMove(II)V

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->onTouchUp()V

    goto :goto_0

    .line 337
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->onTouchDown(II)V

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->invalidate()V

    return v2
.end method

.method onTouchMove(II)V
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getTouchZoneViews()Ljava/util/List;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0, p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getTouchZoneAt(Ljava/util/List;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    return-void
.end method

.method onTouchUp()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->showPopover(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->selectedTouchZone:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setApp(Lcom/brakefield/painter/app/PainterApp;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->app:Lcom/brakefield/painter/app/PainterApp;

    return-void
.end method

.method public setIndicator(Landroid/view/View;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->indicator:Landroid/view/View;

    return-void
.end method

.method public setViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->viewGroup:Landroid/view/ViewGroup;

    .line 258
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->postInvalidate()V

    return-void
.end method

.method public setVisualizeCoverage(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->visualizeCoverage:Z

    return-void
.end method

.method setup()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->fillPaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlineErrorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->outlineErrorPaint:Landroid/graphics/Paint;

    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
