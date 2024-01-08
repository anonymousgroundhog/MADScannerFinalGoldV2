.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda26;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$returnHomeFromEditor$27$com-brakefield-painter-ui-SimpleUI(ILandroid/content/DialogInterface;I)V

    return-void
.end method
