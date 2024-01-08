.class interface abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgContainer;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SvgContainer"
.end annotation


# virtual methods
.method public abstract addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end method
