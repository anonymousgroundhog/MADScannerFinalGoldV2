.class public Lcom/brakefield/infinitestudio/color/ColorPickerManager;
.super Ljava/lang/Object;
.source "ColorPickerManager.java"


# static fields
.field public static final COLOR_WHEEL_ARCS:I = 0x5

.field public static final COLOR_WHEEL_CIRCLE_DIAMOND:I = 0x3

.field public static final COLOR_WHEEL_CIRCLE_SQUARE:I = 0x2

.field public static final COLOR_WHEEL_CIRCLE_TRIANGLE:I = 0x4

.field public static final COLOR_WHEEL_SQUARE_BOTTOM:I = 0x0

.field public static final COLOR_WHEEL_SQUARE_LEFT:I = 0x1

.field public static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorPickerView(Landroid/content/Context;)Lcom/brakefield/infinitestudio/color/ColorPickerView;
    .locals 1

    .line 17
    sget v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object p0

    return-object p0
.end method

.method public static getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 31
    new-instance p1, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 28
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/color/RGBWheel;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 26
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 27
    :cond_2
    new-instance p1, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 24
    :cond_4
    new-instance p1, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 23
    :cond_5
    new-instance p1, Lcom/brakefield/infinitestudio/color/SVSquare;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/color/SVSquare;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
