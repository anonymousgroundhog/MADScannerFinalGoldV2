.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$AspectRatioKeywords;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AspectRatioKeywords"
.end annotation


# static fields
.field private static final aspectRatioKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 567
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$AspectRatioKeywords;->aspectRatioKeywords:Ljava/util/Map;

    const-string v1, "none"

    .line 569
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMinYMin"

    .line 570
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMidYMin"

    .line 571
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMaxYMin"

    .line 572
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMinYMid"

    .line 573
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMidYMid"

    .line 574
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMaxYMid"

    .line 575
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMinYMax"

    .line 576
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMidYMax"

    .line 577
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xMaxYMax"

    .line 578
    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 582
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParser$AspectRatioKeywords;->aspectRatioKeywords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    return-object p0
.end method
