.class public Lcom/brakefield/infinitestudio/color/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field public static final BLACK:I

.field public static final BLUE:I

.field public static final DARK:I

.field public static final GOLD:I

.field public static final GREEN:I

.field public static final ORANGE:I

.field public static final PINK:I = -0xae89

.field public static final RED:I

.field public static final WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb5

    const/16 v1, 0xe5

    const/16 v2, 0x33

    .line 7
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    const/16 v0, 0x99

    const/16 v1, 0xcc

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->GREEN:I

    const/16 v0, 0xbb

    const/16 v1, 0xff

    .line 9
    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->ORANGE:I

    const/16 v0, 0xaf

    const/16 v2, 0x37

    const/16 v4, 0xd4

    .line 10
    invoke-static {v4, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->GOLD:I

    const/16 v0, 0x4b

    const/16 v2, 0x39

    const/16 v4, 0xdd

    .line 11
    invoke-static {v4, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    .line 12
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->WHITE:I

    const/16 v0, 0x22

    .line 13
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->DARK:I

    .line 14
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/color/Colors;->BLACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
