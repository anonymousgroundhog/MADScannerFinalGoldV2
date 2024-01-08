.class public Lcom/brakefield/infinitestudio/image/svg/SVGDef;
.super Ljava/lang/Object;
.source "SVGDef.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/infinitestudio/image/svg/SVGDef;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGDef;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGDef;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/infinitestudio/image/svg/SVGDef;)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGDef;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGDef;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/SVGDef;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGDef;->compareTo(Lcom/brakefield/infinitestudio/image/svg/SVGDef;)I

    move-result p1

    return p1
.end method
