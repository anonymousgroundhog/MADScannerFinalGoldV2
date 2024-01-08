.class public Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;
.super Ljava/lang/Object;
.source "ZeroLatencyCompat.java"


# static fields
.field private static HAL_TRANSFORM_FLIP_H:I = 0x1

.field private static HAL_TRANSFORM_FLIP_V:I = 0x2

.field private static HAL_TRANSFORM_RESERVED:I = 0x8

.field private static HAL_TRANSFORM_ROT_180:I = 0x3

.field private static HAL_TRANSFORM_ROT_270:I = 0x7

.field private static HAL_TRANSFORM_ROT_90:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayRotation(Landroid/view/SurfaceView;)I
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->getTransformHint(Landroid/view/Surface;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_90:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_180:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_270:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->halTransformToSurfaceRotation(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static getRotationMatrix(III)Landroid/graphics/Matrix;
    .locals 3

    .line 199
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 201
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 202
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/high16 p0, 0x43340000    # 180.0f

    .line 204
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 205
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    const/high16 p0, 0x43870000    # 270.0f

    .line 207
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 208
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getTransformHint(Landroid/view/Surface;)I
    .locals 4

    .line 147
    :try_start_0
    const-class v0, Landroid/view/Surface;

    const-string v1, "getTransformHint"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private static halTransformToSurfaceRotation(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 99
    :cond_0
    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_90:I

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_1
    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_180:I

    if-ne p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    .line 103
    :cond_2
    sget v1, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_270:I

    if-ne p0, v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v0
.end method

.method private static hasSetBuffersDimensionsSupport()Z
    .locals 6

    const/4 v0, 0x0

    .line 129
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setBuffersDimensions"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v0
.end method

.method private static hasSetBuffersTransformSupport()Z
    .locals 6

    const/4 v0, 0x0

    .line 111
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setBuffersTransform"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v0
.end method

.method private static hasSharedBufferModeSupport()Z
    .locals 6

    const/4 v0, 0x0

    .line 36
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setSharedBufferMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v0
.end method

.method public static hasZeroLatencySupport(Landroid/content/Context;)Z
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->runningOnChromebook(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasSharedBufferModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasZeroLatencyWithRotationSupport(Landroid/content/Context;)Z
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencySupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasSetBuffersTransformSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasSetBuffersDimensionsSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static printHalTransform(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "HAL_TRANSFORM_ROT_0"

    return-object p0

    .line 69
    :cond_0
    sget v0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_90:I

    if-ne p0, v0, :cond_1

    const-string p0, "HAL_TRANSFORM_ROT_90"

    return-object p0

    .line 71
    :cond_1
    sget v0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_180:I

    if-ne p0, v0, :cond_2

    const-string p0, "HAL_TRANSFORM_ROT_180"

    return-object p0

    .line 73
    :cond_2
    sget v0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_270:I

    if-ne p0, v0, :cond_3

    const-string p0, "HAL_TRANSFORM_ROT_270"

    return-object p0

    .line 75
    :cond_3
    sget v0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_FLIP_H:I

    if-ne p0, v0, :cond_4

    const-string p0, "HAL_TRANSFORM_FLIP_H"

    return-object p0

    .line 77
    :cond_4
    sget v0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_FLIP_V:I

    if-ne p0, v0, :cond_5

    const-string p0, "HAL_TRANSFORM_FLIP_V"

    return-object p0

    :cond_5
    const-string p0, "<unknown>"

    return-object p0
.end method

.method public static printSurfaceRotation(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "ROTATION_0"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "ROTATION_90"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "ROTATION_180"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "ROTATION_270"

    return-object p0

    :cond_3
    const-string p0, "<unknown>"

    return-object p0
.end method

.method public static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 0

    .line 215
    invoke-static {p1, p2, p3}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->getRotationMatrix(III)Landroid/graphics/Matrix;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static rotateRect(Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 0

    .line 221
    invoke-static {p1, p2, p3}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->getRotationMatrix(III)Landroid/graphics/Matrix;

    move-result-object p1

    .line 222
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 223
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 224
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private static runningOnChromebook(Landroid/content/Context;)Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "org.chromium.arc"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setBufferRotation(Landroid/view/SurfaceView;I)V
    .locals 4

    .line 178
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    .line 182
    :cond_0
    invoke-static {v0, v1, p0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->setBuffersDimensions(Landroid/view/Surface;II)Z

    :cond_1
    const/4 p0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 188
    sget p0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_270:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 190
    sget p0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_180:I

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 192
    sget p0, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->HAL_TRANSFORM_ROT_90:I

    .line 195
    :cond_5
    :goto_0
    invoke-static {v0, p0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->setBuffersTransform(Landroid/view/Surface;I)Z

    return-void
.end method

.method private static setBuffersDimensions(Landroid/view/Surface;II)Z
    .locals 7

    const/4 v0, 0x0

    .line 138
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setBuffersDimensions"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move v0, v6

    :catch_0
    :cond_0
    return v0
.end method

.method private static setBuffersTransform(Landroid/view/Surface;I)Z
    .locals 6

    const/4 v0, 0x0

    .line 120
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setBuffersTransform"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move v0, v3

    :catch_0
    :cond_0
    return v0
.end method

.method public static setSharedBufferMode(Landroid/view/Surface;Z)Z
    .locals 6

    const/4 v0, 0x0

    .line 45
    :try_start_0
    const-class v1, Landroid/view/Surface;

    const-string/jumbo v2, "setSharedBufferMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move v0, v3

    :catch_0
    :cond_0
    return v0
.end method
