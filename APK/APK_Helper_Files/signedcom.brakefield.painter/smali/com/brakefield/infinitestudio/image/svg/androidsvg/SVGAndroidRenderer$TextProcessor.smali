.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TextProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$1;)V
    .locals 0

    .line 1446
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V

    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextContainer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract processText(Ljava/lang/String;)V
.end method
