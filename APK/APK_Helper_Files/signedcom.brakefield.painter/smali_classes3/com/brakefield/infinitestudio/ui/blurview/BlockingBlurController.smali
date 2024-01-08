.class final Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;
.super Ljava/lang/Object;
.source "BlockingBlurController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/blurview/BlurController;


# static fields
.field static final TRANSPARENT:I


# instance fields
.field private blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Landroid/view/View;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private hasFixedTransformationMatrix:Z

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

.field private overlayColor:I

.field private final paint:Landroid/graphics/Paint;

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;

.field private scaleFactor:F

.field private final sizeScaler:Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 34
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurRadius:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 44
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootLocation:[I

    new-array v1, v0, [I

    .line 45
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurViewLocation:[I

    .line 46
    new-instance v1, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;-><init>(F)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->sizeScaler:Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->scaleFactor:F

    .line 49
    new-instance v1, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurEnabled:Z

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->paint:Landroid/graphics/Paint;

    .line 74
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootView:Landroid/view/ViewGroup;

    .line 75
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    .line 76
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->overlayColor:I

    .line 77
    new-instance p2, Lcom/brakefield/infinitestudio/ui/blurview/NoOpBlurAlgorithm;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/ui/blurview/NoOpBlurAlgorithm;-><init>()V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 82
    invoke-virtual {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->init(II)V

    return-void
.end method

.method private allocateBitmap(II)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->sizeScaler:Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;->scale(II)Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler$Size;

    move-result-object p1

    .line 127
    iget p2, p1, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler$Size;->scaleFactor:F

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->scaleFactor:F

    .line 128
    iget p2, p1, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler$Size;->height:I

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurRadius:F

    invoke-interface {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 171
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 136
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 138
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 139
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    neg-int v1, v2

    int-to-float v1, v1

    .line 141
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->scaleFactor:F

    div-float/2addr v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 144
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v2, v1, v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;->translate(FF)V

    .line 145
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->scaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    .line 185
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    invoke-interface {v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;->destroy()V

    .line 186
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->updateBlur()V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->scaleFactor:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->overlayColor:I

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->sizeScaler:Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/blurview/SizeScaler;->isZeroSized(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->allocateBitmap(II)V

    .line 95
    new-instance p1, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    .line 96
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->initialized:Z

    .line 98
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->hasFixedTransformationMatrix:Z

    if-eqz p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->setupInternalCanvasMatrix()V

    :cond_1
    return-void
.end method

.method synthetic lambda$new$0$com-brakefield-infinitestudio-ui-blurview-BlockingBlurController()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->updateBlur()V

    const/4 v0, 0x1

    return v0
.end method

.method public setBlurAlgorithm(Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAlgorithm:Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;

    return-object p0
.end method

.method public setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurEnabled:Z

    .line 210
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    .line 211
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 0

    .line 191
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setHasFixedTransformationMatrix(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->hasFixedTransformationMatrix:Z

    return-object p0
.end method

.method public setOverlayColor(I)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 1

    .line 229
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 230
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->overlayColor:I

    .line 231
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->initialized:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->hasFixedTransformationMatrix:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;->save()I

    .line 114
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->setupInternalCanvasMatrix()V

    .line 115
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->internalCanvas:Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurViewCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    :goto_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurAndSave()V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;->init(II)V

    return-void
.end method
