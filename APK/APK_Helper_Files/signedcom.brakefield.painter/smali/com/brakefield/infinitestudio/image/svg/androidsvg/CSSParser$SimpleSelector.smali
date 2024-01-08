.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSelector"
.end annotation


# instance fields
.field attribs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;",
            ">;"
        }
    .end annotation
.end field

.field combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

.field pseudos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 96
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    .line 98
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 103
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addAttrib(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;

    invoke-direct {v1, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPseudo(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    if-ne v1, v2, :cond_0

    const-string v1, "> "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    if-ne v1, v2, :cond_1

    const-string v1, "+ "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "*"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;

    const/16 v3, 0x5b

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$CSSParser$AttribOp:[I

    iget-object v4, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->operation:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "|="

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "~="

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v3, 0x3d

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0x5d

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x3a

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 145
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
