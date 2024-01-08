.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ruleset"
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;

    .line 161
    iget-object v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    iget-object v2, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->selector:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;

    iget v2, v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    if-le v1, v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAll(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;)V
    .locals 2

    .line 171
    iget-object v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 175
    :cond_1
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;

    .line 176
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;

    .line 197
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Rule;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
