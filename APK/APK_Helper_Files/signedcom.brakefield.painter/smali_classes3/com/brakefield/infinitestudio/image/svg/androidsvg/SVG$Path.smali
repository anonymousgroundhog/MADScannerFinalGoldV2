.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Path;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Path"
.end annotation


# instance fields
.field d:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;

.field pathLength:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1694
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "path"

    return-object v0
.end method
