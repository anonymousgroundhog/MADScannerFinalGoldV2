.class Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;
.super Ljava/lang/Object;
.source "SymKaleido.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$planesValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->val$planesValue:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    add-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    .line 271
    iget-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->val$planesValue:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->this$0:Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    iget p3, p3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;->planes:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
