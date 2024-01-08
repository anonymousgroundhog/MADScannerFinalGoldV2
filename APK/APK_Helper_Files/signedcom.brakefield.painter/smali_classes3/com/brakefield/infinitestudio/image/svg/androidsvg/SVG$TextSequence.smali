.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSequence"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field private textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1835
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgObject;-><init>()V

    .line 1836
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTextRoot()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    return-object v0
.end method

.method public setTextRoot(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->textRoot:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
