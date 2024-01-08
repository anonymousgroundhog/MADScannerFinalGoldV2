.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererState"
.end annotation


# instance fields
.field fillPaint:Landroid/graphics/Paint;

.field hasFill:Z

.field hasStroke:Z

.field spacePreserve:Z

.field strokePaint:Landroid/graphics/Paint;

.field style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

.field viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

.field viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)V
    .locals 2

    .line 130
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/16 v0, 0x181

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 133
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 138
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    return-void
.end method

.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iget-boolean p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 147
    iget-boolean p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 148
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 149
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 150
    iget-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz p1, :cond_0

    .line 151
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 152
    :cond_0
    iget-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    if-eqz p1, :cond_1

    .line 153
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    iget-object v0, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    .line 154
    :cond_1
    iget-boolean p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 157
    :try_start_0
    iget-object p1, p2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SVGAndroidRenderer"

    const-string v0, "Unexpected clone error"

    .line 162
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    :goto_0
    return-void
.end method
