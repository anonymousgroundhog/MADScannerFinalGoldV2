.class Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;
.super Ljava/lang/Object;
.source "BlurViewHelper.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/blurview/BlurAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/BlurViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrantBlur"
.end annotation


# instance fields
.field private final blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final colorMatrixScript:Landroid/renderscript/ScriptIntrinsicColorMatrix;

.field private lastBitmapHeight:I

.field private lastBitmapWidth:I

.field private outAllocation_1:Landroid/renderscript/Allocation;

.field private outAllocation_2:Landroid/renderscript/Allocation;

.field private final renderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/ColorMatrix;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapWidth:I

    .line 69
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapHeight:I

    .line 72
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 73
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 74
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->colorMatrixScript:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    .line 75
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->access$000(Landroid/renderscript/ScriptIntrinsicColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method private canReuseAllocation(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapHeight:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapWidth:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 87
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->canReuseAllocation(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_1:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_2:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_1:Landroid/renderscript/Allocation;

    .line 91
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_2:Landroid/renderscript/Allocation;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapWidth:I

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->lastBitmapHeight:I

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 107
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 108
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_1:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 110
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 112
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->colorMatrixScript:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_1:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_2:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v0, v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 114
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_2:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->colorMatrixScript:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->destroy()V

    .line 123
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 124
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_1:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BlurViewHelper$VibrantBlur;->outAllocation_2:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 136
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
