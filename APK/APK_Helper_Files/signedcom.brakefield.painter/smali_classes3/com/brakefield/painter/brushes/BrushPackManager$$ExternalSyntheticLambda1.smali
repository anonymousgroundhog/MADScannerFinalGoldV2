.class public final synthetic Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->lambda$shareFolder$0(Landroid/app/Activity;Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
