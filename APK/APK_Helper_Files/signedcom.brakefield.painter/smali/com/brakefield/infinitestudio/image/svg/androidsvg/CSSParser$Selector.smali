.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Selector"
.end annotation


# instance fields
.field selector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;",
            ">;"
        }
    .end annotation
.end field

.field specificity:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$1;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addedAttributeOrPseudo()V
    .locals 1

    .line 257
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method addedElement()V
    .locals 1

    .line 262
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method addedIdAttribute()V
    .locals 1

    .line 252
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method get(I)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    return-object p1
.end method

.method isEmpty()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

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

.method size()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$SimpleSelector;

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Selector;->specificity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
