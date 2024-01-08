.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/widget/FrameLayout;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$3:Landroid/view/View;

    iput p5, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$4:I

    iput p6, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$5:I

    iput p7, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$6:I

    iput p8, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$7:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$3:Landroid/view/View;

    iget v4, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$4:I

    iget v5, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$5:I

    iget v6, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$6:I

    iget v7, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda23;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$popup$20$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View;IIII)V

    return-void
.end method
