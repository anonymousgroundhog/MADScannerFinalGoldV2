.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda15;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$bind$5$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
