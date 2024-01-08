.class public final synthetic Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/brakefield/painter/ShareManager$$ExternalSyntheticLambda4;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ShareManager;->lambda$showShareSnackBar$6(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
