.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Stop;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stop"
.end annotation


# instance fields
.field offset:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1935
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .line 1942
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "stop"

    return-object v0
.end method
