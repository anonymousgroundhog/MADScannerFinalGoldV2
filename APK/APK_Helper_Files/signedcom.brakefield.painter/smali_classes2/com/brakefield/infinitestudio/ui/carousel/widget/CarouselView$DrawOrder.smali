.class public final enum Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
.super Ljava/lang/Enum;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

.field public static final enum CenterBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

.field public static final enum CenterFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

.field public static final enum FirstBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

.field public static final enum FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
    .locals 4

    .line 707
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    sget-object v1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    sget-object v2, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    sget-object v3, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 711
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    const-string v1, "FirstBack"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    .line 716
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    const-string v1, "FirstFront"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    .line 723
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    const-string v1, "CenterFront"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    .line 730
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    const-string v1, "CenterBack"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    .line 707
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->$values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->$VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
    .locals 1

    .line 707
    const-class v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
    .locals 1

    .line 707
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->$VALUES:[Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    return-object v0
.end method
