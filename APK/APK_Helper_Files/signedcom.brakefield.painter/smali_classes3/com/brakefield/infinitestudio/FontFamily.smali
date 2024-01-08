.class public Lcom/brakefield/infinitestudio/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/FontFamily$Font;,
        Lcom/brakefield/infinitestudio/FontFamily$Info;
    }
.end annotation


# instance fields
.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/FontFamily$Font;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/FontFamily;->fonts:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/brakefield/infinitestudio/FontFamily;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/brakefield/infinitestudio/FontFamily;->fonts:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/FontFamily$Font;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/FontFamily$Font;-><init>(Lcom/brakefield/infinitestudio/FontFamily;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findFont(Ljava/lang/String;)Lcom/brakefield/infinitestudio/FontFamily$Font;
    .locals 3

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/FontFamily;->fonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/brakefield/infinitestudio/FontFamily;->fonts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/FontFamily$Font;

    .line 33
    iget-object v2, v1, Lcom/brakefield/infinitestudio/FontFamily$Font;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
