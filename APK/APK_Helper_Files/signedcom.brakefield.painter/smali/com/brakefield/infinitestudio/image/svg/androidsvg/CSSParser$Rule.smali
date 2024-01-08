.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rule"
.end annotation


# instance fields
.field selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

.field style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    .line 211
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
