.class public Lcom/brakefield/infinitestudio/ui/SlideshowView;
.super Landroid/view/View;
.source "SlideshowView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;,
        Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;,
        Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;
    }
.end annotation


# static fields
.field public static final DESIGN_URL:Ljava/lang/String;

.field public static final PAINTER_URL:Ljava/lang/String;

.field private static final PREF_SLIDESHOW_LAST:Ljava/lang/String; = "PREF_SLIDESHOW_LAST"

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field public static showcaseURL:Ljava/lang/String;


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private changingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private direction:F

.field private downY:F

.field private fadeIn:F

.field private image:Landroid/graphics/drawable/BitmapDrawable;

.field private imageH:I

.field private imageW:I

.field private index:I

.field private interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

.field private mDetector:Landroidx/core/view/GestureDetectorCompat;

.field private maxHeight:I

.field private maxWidth:I

.field private nameView:Landroid/widget/TextView;

.field private newDirection:F

.field private newImage:Landroid/graphics/drawable/BitmapDrawable;

.field private newImageH:I

.field private newImageW:I

.field private newScroll:F

.field private pause:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private scroll:F

.field private session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

.field private showcases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Z

.field private startHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getShowcaseURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->PAINTER_URL:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getDesignShowcaseURL()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/brakefield/infinitestudio/ui/SlideshowView;->DESIGN_URL:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcaseURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcases:Ljava/util/List;

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 84
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->direction:F

    .line 86
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    .line 87
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    .line 89
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    .line 100
    new-instance v0, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/interpolators/AccelDecelInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 110
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause:Z

    .line 117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 119
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 120
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    .line 123
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxWidth:I

    .line 125
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "PREF_SLIDESHOW_LAST"

    const/4 v1, 0x0

    .line 127
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_0
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    .line 135
    new-instance p1, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/SlideshowView;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Landroid/content/SharedPreferences;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$302(Lcom/brakefield/infinitestudio/ui/SlideshowView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->changingTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcases:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->changeImage()V

    return-void
.end method

.method private changeImage()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->changingTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcases:Ljava/util/List;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    .line 277
    new-instance v1, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 278
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->changingTask:Landroid/os/AsyncTask;

    .line 280
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    .line 281
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->index:I

    .line 283
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->nameView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    sget v2, Lcom/brakefield/infinitestudio/color/Colors;->DARK:I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getWidth()I

    move-result v3

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getHeight()I

    move-result v4

    .line 146
    iget-object v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->image:Landroid/graphics/drawable/BitmapDrawable;

    const v6, 0x3a83126f    # 0.001f

    const/high16 v7, -0x40800000    # -1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v5, :cond_2

    int-to-float v2, v3

    .line 147
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageW:I

    int-to-float v5, v5

    div-float v5, v2, v5

    .line 149
    iget v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageH:I

    int-to-float v13, v12

    mul-float/2addr v13, v5

    int-to-float v14, v4

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    int-to-float v5, v12

    div-float v5, v14, v5

    :cond_0
    int-to-float v12, v12

    mul-float/2addr v12, v5

    sub-float v12, v14, v12

    neg-float v13, v12

    mul-float/2addr v13, v8

    mul-float/2addr v12, v11

    mul-float/2addr v12, v8

    .line 158
    iget v15, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    iget v8, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->direction:F

    mul-float/2addr v8, v6

    add-float/2addr v15, v8

    iput v15, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    .line 160
    iget-object v8, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-interface {v8, v10, v15, v10}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v8

    mul-float/2addr v12, v8

    add-float/2addr v13, v12

    .line 177
    iget v8, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_1

    .line 179
    iput v9, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->changeImage()V

    :cond_1
    div-float/2addr v2, v11

    div-float/2addr v14, v11

    .line 188
    iget v8, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageW:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    .line 189
    iget v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageH:I

    int-to-float v12, v12

    mul-float/2addr v5, v12

    .line 191
    iget-object v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->image:Landroid/graphics/drawable/BitmapDrawable;

    div-float/2addr v8, v11

    sub-float v15, v2, v8

    float-to-int v15, v15

    div-float/2addr v5, v11

    sub-float v7, v14, v5

    float-to-int v7, v7

    add-float/2addr v2, v8

    float-to-int v2, v2

    add-float/2addr v14, v5

    float-to-int v5, v14

    invoke-virtual {v12, v15, v7, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 201
    :goto_0
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    int-to-float v2, v3

    .line 202
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageW:I

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 204
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageH:I

    int-to-float v7, v5

    mul-float/2addr v7, v3

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    int-to-float v3, v5

    div-float v3, v8, v3

    :cond_3
    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v5, v8, v5

    neg-float v7, v5

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v12

    mul-float/2addr v5, v11

    mul-float/2addr v5, v12

    .line 213
    iget v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    iget v13, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    mul-float/2addr v13, v6

    add-float/2addr v12, v13

    iput v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v12, v6, v12

    div-float/2addr v12, v6

    .line 216
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 218
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    iget v12, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-interface {v6, v10, v12, v10}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v6

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    .line 220
    iget v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4

    .line 221
    iput v9, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    .line 222
    iget v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v6, v12

    iput v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    goto :goto_1

    :cond_4
    const/high16 v12, -0x40800000    # -1.0f

    .line 224
    :goto_1
    iget v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_5

    .line 225
    iput v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    .line 226
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    mul-float/2addr v5, v12

    iput v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    .line 229
    :cond_5
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    const v6, 0x3c23d70a    # 0.01f

    add-float/2addr v5, v6

    iput v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_6

    .line 232
    iput v10, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    :cond_6
    div-float/2addr v2, v11

    div-float/2addr v8, v11

    .line 237
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageW:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 238
    iget v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageH:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    .line 240
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    div-float/2addr v5, v11

    sub-float v12, v2, v5

    float-to-int v12, v12

    div-float/2addr v3, v11

    sub-float v11, v8, v3

    float-to-int v11, v11

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v6, v12, v11, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 242
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    cmpl-float v2, v2, v10

    if-ltz v2, :cond_7

    .line 250
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 251
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageW:I

    iput v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageW:I

    .line 252
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageH:I

    iput v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageH:I

    .line 253
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    iput v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->scroll:F

    .line 254
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    iput v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->direction:F

    .line 255
    iput v9, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    const/4 v2, 0x0

    .line 256
    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    :cond_7
    int-to-float v2, v4

    .line 260
    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v10

    if-lez v3, :cond_8

    move v2, v10

    :cond_8
    sub-float/2addr v10, v2

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v10, v2

    const/high16 v2, 0x42c80000    # 100.0f

    add-float/2addr v10, v2

    float-to-int v2, v10

    const/4 v3, 0x0

    .line 264
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 266
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause:Z

    if-nez v1, :cond_9

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->invalidate()V

    :cond_9
    return-void
.end method

.method public fadeIn(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn:F

    .line 313
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageW:I

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newImageH:I

    .line 316
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->direction:F

    neg-float p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newDirection:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 318
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 320
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->newScroll:F

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->postInvalidate()V

    return-void
.end method

.method public getImageList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 710
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 712
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 713
    new-instance v5, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-direct {v5}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;-><init>()V

    .line 715
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setId(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v6, "tbUrl"

    .line 716
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setThumbUrl(Ljava/lang/String;)V

    const-string/jumbo v6, "url"

    .line 717
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setImageUrl(Ljava/lang/String;)V

    const-string/jumbo v6, "source"

    .line 718
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setArtist(Ljava/lang/String;)V

    .line 719
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    if-eqz v4, :cond_2

    .line 720
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, v5, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->owned:Z

    .line 723
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 728
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleConfigurationChange()V
    .locals 3

    .line 638
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 640
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 641
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 642
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    .line 643
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxWidth:I

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onStart()V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->title_cover_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 527
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    .line 529
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 531
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 532
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 534
    :cond_1
    new-instance v2, Landroid/animation/FloatEvaluator;

    invoke-direct {v2}, Landroid/animation/FloatEvaluator;-><init>()V

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 535
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 534
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3e8

    .line 536
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 537
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/brakefield/infinitestudio/ui/SlideshowView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$3;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/SlideshowView$4;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$4;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    const/high16 v0, 0x42f00000    # 120.0f

    cmpl-float p3, p3, v0

    const/4 v1, 0x1

    const/high16 v2, 0x43480000    # 200.0f

    if-lez p3, :cond_0

    .line 445
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p3, v2

    if-lez p3, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V

    return v1

    .line 448
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    .line 449
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 414
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->mDetector:Landroidx/core/view/GestureDetectorCompat;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->mDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->mDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 358
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 359
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/brakefield/infinitestudio/R$dimen;->title_cover_size_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    if-eqz v0, :cond_4

    .line 370
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onStart()V

    .line 373
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->downY:F

    .line 374
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->startHeight:I

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 376
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->startHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->downY:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    if-ge p1, v3, :cond_6

    move p1, v3

    .line 379
    :cond_6
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 381
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    if-eqz v0, :cond_7

    sub-int/2addr p1, v3

    int-to-float p1, p1

    .line 382
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr p1, v3

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onPullDown(F)V

    .line 385
    :cond_7
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_8
    if-eq v0, v1, :cond_9

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 391
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    .line 392
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    goto :goto_0

    .line 394
    :cond_a
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V

    :cond_b
    :goto_0
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 326
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause:Z

    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x0

    .line 633
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause:Z

    .line 634
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->postInvalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageW:I

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->imageH:I

    .line 304
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->postInvalidate()V

    return-void
.end method

.method public setNameView(Landroid/widget/TextView;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->nameView:Landroid/widget/TextView;

    return-void
.end method

.method public setSlideshowListener(Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    return-void
.end method

.method public setUserSession(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method

.method public show()V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->listener:Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onStart()V

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->title_cover_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    .line 468
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showing:Z

    .line 470
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 471
    new-instance v2, Landroid/animation/FloatEvaluator;

    invoke-direct {v2}, Landroid/animation/FloatEvaluator;-><init>()V

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->maxHeight:I

    .line 472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 471
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3e8

    .line 473
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/SlideshowView$2;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/SlideshowView$2;-><init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
