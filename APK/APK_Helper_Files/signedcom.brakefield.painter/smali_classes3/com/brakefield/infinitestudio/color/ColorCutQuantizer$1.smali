.class Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;)I
    .locals 0

    .line 386
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p2

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 383
    check-cast p1, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    check-cast p2, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$1;->compare(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;)I

    move-result p1

    return p1
.end method
