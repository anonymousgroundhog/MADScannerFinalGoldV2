.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TextPositionedContainer"
.end annotation


# instance fields
.field dx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field dy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1795
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;-><init>()V

    return-void
.end method
