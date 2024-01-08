.class public final enum Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;
.super Ljava/lang/Enum;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum CoverFlow:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum Custom:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum Horizontal:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum InverseTimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum Parameterized:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum TimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

.field public static final enum Wheel:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;
    .locals 7

    .line 502
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Horizontal:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Wheel:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v2, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->CoverFlow:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v3, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->TimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v4, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->InverseTimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v5, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Parameterized:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    sget-object v6, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Custom:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    filled-new-array/range {v0 .. v6}, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 507
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Horizontal:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 512
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "Wheel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Wheel:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 517
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "CoverFlow"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->CoverFlow:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 522
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->IHCnQF:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->TimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 529
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "InverseTimeMachine"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->InverseTimeMachine:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 532
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "Parameterized"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Parameterized:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 539
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    const-string v1, "Custom"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->Custom:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    .line 502
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->$values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->$VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static names()[Ljava/lang/String;
    .locals 4

    .line 546
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    move-result-object v0

    .line 547
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 548
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 549
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;
    .locals 1

    .line 502
    const-class v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;
    .locals 1

    .line 502
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->$VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;

    return-object v0
.end method
