.class public final synthetic Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda2;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda2;->f$0:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/PurchaseManager;->lambda$refreshView$2(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
