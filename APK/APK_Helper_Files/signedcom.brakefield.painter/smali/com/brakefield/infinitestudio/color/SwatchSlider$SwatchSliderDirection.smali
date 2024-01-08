.class public final enum Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;
.super Ljava/lang/Enum;
.source "SwatchSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/SwatchSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwatchSliderDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

.field public static final enum ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

.field public static final enum BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

.field public static final enum LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

.field public static final enum RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;
    .locals 4

    .line 33
    sget-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v1, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    sget-object v3, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const-string v1, "LEFT_SIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 35
    new-instance v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const-string v1, "ABOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 36
    new-instance v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const-string v1, "RIGHT_SIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    const-string v1, "BELOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    .line 33
    invoke-static {}, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->$values()[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->$VALUES:[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;
    .locals 1

    .line 33
    const-class v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;
    .locals 1

    .line 33
    sget-object v0, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->$VALUES:[Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    return-object v0
.end method
