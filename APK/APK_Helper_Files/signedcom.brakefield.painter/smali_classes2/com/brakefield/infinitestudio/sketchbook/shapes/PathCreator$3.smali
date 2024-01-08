.class Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;
.super Ljava/lang/Object;
.source "PathCreator.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asterSeek:Landroid/widget/SeekBar;

.field final synthetic val$pointsVal:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;->val$pointsVal:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;->val$asterSeek:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 114
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    const/high16 p3, 0x42900000    # 72.0f

    int-to-float p2, p2

    invoke-interface {p1, p3, p2, p3}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$202(I)I

    .line 115
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;->val$pointsVal:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$200()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$300()V

    .line 117
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$3;->val$asterSeek:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$000()F

    move-result p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$100()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
