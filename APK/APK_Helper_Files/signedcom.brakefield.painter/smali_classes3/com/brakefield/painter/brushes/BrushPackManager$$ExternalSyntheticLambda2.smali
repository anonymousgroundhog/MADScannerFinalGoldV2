.class public final synthetic Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/brushes/BrushPackManager;->lambda$shareFolder$1(Landroid/view/View;Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method
