.class Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;
.super Ljava/lang/Object;
.source "SymRadial.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

.field final synthetic val$fanValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;->this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;->val$fanValue:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 193
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;->this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    double-to-float p3, v0

    iput p3, p1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;->sweep:F

    .line 194
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial$2;->val$fanValue:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
