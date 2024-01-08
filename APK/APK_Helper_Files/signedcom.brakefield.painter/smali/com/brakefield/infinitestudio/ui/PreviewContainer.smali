.class public Lcom/brakefield/infinitestudio/ui/PreviewContainer;
.super Landroid/widget/FrameLayout;
.source "PreviewContainer.java"


# instance fields
.field private previewMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->previewMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->setStaticTransformationsEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 0

    .line 30
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->previewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getPreviewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->previewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public setPreviewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PreviewContainer;->previewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method
