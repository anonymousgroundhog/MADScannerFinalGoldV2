.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TextContainer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1782
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;
        }
    .end annotation

    .line 1787
    instance-of v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1790
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text content elements cannot contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " elements."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
