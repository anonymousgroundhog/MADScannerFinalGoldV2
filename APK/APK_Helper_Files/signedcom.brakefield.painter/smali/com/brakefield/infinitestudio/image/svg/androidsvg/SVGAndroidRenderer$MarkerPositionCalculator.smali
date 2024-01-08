.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerPositionCalculator"
.end annotation


# instance fields
.field private closepathReAdjustPending:Z

.field private lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation
.end field

.field private normalCubic:Z

.field private startArc:Z

.field private startX:F

.field private startY:F

.field private subpathStartIndex:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;)V
    .locals 2

    .line 2802
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2793
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    const/4 p1, 0x0

    .line 2795
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    const/4 p1, 0x0

    .line 2796
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    const/4 v0, -0x1

    .line 2797
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    if-nez p2, :cond_0

    return-void

    .line 2807
    :cond_0
    invoke-virtual {p2, p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathDefinition;->enumeratePath(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;)V

    .line 2809
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz p2, :cond_1

    .line 2812
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2814
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2815
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2818
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz p1, :cond_2

    .line 2819
    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 13

    move-object v10, p0

    const/4 v11, 0x1

    .line 2882
    iput-boolean v11, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    const/4 v12, 0x0

    .line 2883
    iput-boolean v12, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2884
    iget-object v0, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v0, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget-object v1, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->access$700(FFFFFZZFFLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PathInterface;)V

    .line 2885
    iput-boolean v11, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    .line 2886
    iput-boolean v12, v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 2892
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2893
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lineTo(FF)V

    const/4 v0, 0x1

    .line 2898
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 8

    .line 2860
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->normalCubic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    if-eqz v0, :cond_1

    .line 2861
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2862
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2863
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startArc:Z

    .line 2865
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    sub-float v6, p5, p3

    sub-float v7, p6, p4

    move-object v2, p1

    move v4, p5

    move v5, p6

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2866
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    return-void
.end method

.method getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 2825
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 8

    .line 2851
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2852
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2853
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v6, p1, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v1, v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v7, p2, v1

    move-object v2, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    const/4 p1, 0x0

    .line 2854
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    return-void
.end method

.method public moveTo(FF)V
    .locals 8

    .line 2831
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    if-eqz v0, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2836
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2837
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    .line 2839
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    if-eqz v0, :cond_1

    .line 2840
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2842
    :cond_1
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startX:F

    .line 2843
    iput p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->startY:F

    .line 2844
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 2845
    iget-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->subpathStartIndex:I

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 8

    .line 2872
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 2873
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->markers:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2874
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->this$0:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    move-object v2, v0

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;FFFF)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->lastPos:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerVector;

    const/4 p1, 0x0

    .line 2875
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->closepathReAdjustPending:Z

    return-void
.end method
