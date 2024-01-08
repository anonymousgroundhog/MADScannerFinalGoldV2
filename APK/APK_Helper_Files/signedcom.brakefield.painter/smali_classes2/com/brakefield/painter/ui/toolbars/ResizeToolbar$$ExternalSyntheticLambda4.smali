.class public final synthetic Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/toolbars/ResizeToolbar;->lambda$getView$2$com-brakefield-painter-ui-toolbars-ResizeToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method
