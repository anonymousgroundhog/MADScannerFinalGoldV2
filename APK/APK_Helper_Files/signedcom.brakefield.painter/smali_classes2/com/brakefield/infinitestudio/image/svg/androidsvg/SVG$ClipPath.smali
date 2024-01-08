.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$ClipPath;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClipPath"
.end annotation


# instance fields
.field clipPathUnitsAreUser:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1975
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Group;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "clipPath"

    return-object v0
.end method
